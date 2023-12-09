import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/auth/error_args.dart';
import '../../data/polls/polls_args.dart';
import '../../di/providers.dart';
import '../../utils/app_assets.dart';
import '../../utils/extensions.dart';
import '../common/widgets/app_button.dart';

class PollsScreen extends ConsumerStatefulWidget {
  const PollsScreen({super.key});

  @override
  ConsumerState<PollsScreen> createState() => _PollsScreenState();
}

class _PollsScreenState extends ConsumerState<PollsScreen> {
  String _selectedAnswer = '';
  bool _isEnabled = true;

  @override
  void didChangeDependencies() {
    Future.delayed(
      Duration.zero,
      () {
        final args = ModalRoute.of(context)?.settings.arguments as PollsArgs;
        return ref
            .read(pollsControllerProvider.notifier)
            .loadQuestion(args.topicUuid);
      },
    );
    super.didChangeDependencies();
  }

  Color _getButtonColor(String answer, bool correct) {
    print('_getButtonColor($answer, $correct)');
    if (answer == _selectedAnswer) {
      if (!_isEnabled && !correct) {
        return context.colors.error;
      }
      if (!_isEnabled && correct) {
        return context.colors.success;
      }
      return context.colors.minorPrimary.withOpacity(0.4);
    }
    return context.colors.mainBackground;
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(pollsControllerProvider.notifier);
    final state = ref.watch(pollsControllerProvider);

    final args = ModalRoute.of(context)?.settings.arguments as PollsArgs;
    final questionData = state.questionData;
    final questionAnswerData = state.questionAnswerData;

    if (state.isError) {
      context.toErrorScreen(
        ErrorArgs(
          onRetry: () => controller.onRetry(args.topicUuid),
        ),
      );
    }

    if (state.isLoading || state.isError || questionData == null) {
      return SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Container(
          color: context.colors.mainBackground,
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Image.asset(
                    AppAssets.foxAvatar,
                    width: 70,
                    height: 70,
                  ),
                ),
                const SizedBox(height: 30),
                Card(
                  elevation: 0,
                  color: context.colors.mainPrimary,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          questionData.question.title,
                          style: context.text.titleSmall,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          questionData.question.theme,
                          style: context.text.bodyMedium,
                        ),
                        const SizedBox(height: 36),
                        ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          itemCount: questionData.question.answers.length,
                          itemBuilder: (context, index) {
                            final answer = questionData.question.answers[index];
                            return InkWell(
                              onTap: () {
                                if (_isEnabled) {
                                  setState(() => _selectedAnswer = answer);
                                }
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: _getButtonColor(
                                    answer,
                                    questionAnswerData?.correct ?? true,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                    vertical: 14.0,
                                  ),
                                  child: Text(
                                    answer,
                                    style: context.text.bodyLarge,
                                  ),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 12),
                        ),
                        const SizedBox(height: 30),
                        AppButton.filled(
                          enabled: _isEnabled,
                          title: context.strings.save,
                          onTap: () async {
                            setState(() => _isEnabled = false);
                            await controller.answerQuestion(
                              _selectedAnswer,
                              questionData.question.uuid,
                            );
                            await Future.delayed(const Duration(seconds: 3));
                            await controller.loadQuestion(args.topicUuid);
                            setState(() => _isEnabled = true);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
