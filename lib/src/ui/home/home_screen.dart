import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/auth/error_args.dart';
import '../../di/providers.dart';
import '../../utils/app_assets.dart';
import '../../utils/extensions.dart';
import '../common/loading_screen.dart';
import 'widgets/stories_gallery.dart';
import 'widgets/stories_gallery_shimmers.dart';
import 'widgets/topic.dart';
import 'widgets/topics_list.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration.zero,
      ref.read(homeControllerProvider.notifier).loadData,
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    final controller = ref.watch(homeControllerProvider.notifier);
    final state = ref.watch(homeControllerProvider);

    if (state.isError) {
      context.toErrorScreen(
        ErrorArgs(onRetry: controller.onRetry),
      );
    }

    final data = state.data;

    return LoadingWrapper(
      isLoading: state.isLoading,
      child: Scaffold(
        body: RefreshIndicator(
          color: context.colors.mainAccent,
          backgroundColor: context.colors.mainPrimary,
          onRefresh: controller.loadData,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 54),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Text(
                      context.strings.homeTitleMain,
                      style: context.text.titleLarge,
                    ),
                  ),
                  const SizedBox(height: 30),
                  if (data != null)
                    StoriesGallery(stories: data.stories)
                  else
                    const StoriesGalleryShimmers(),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Text(
                      context.strings.homeTitleInteresting,
                      style: context.text.titleSmall,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      children: [
                        Topic(
                          title: context.strings.interestingVoiceBotTitle,
                          text: context.strings.interestingVoiceBotSubtitle,
                          assetPath: AppAssets.interesting4,
                          onTap: context.toVoiceChatScreen,
                        ),
                        Topic(
                          title: context.strings.interestingChatBotTitle,
                          text: context.strings.interestingChatBotSubtitle,
                          assetPath: AppAssets.interesting4,
                          onTap: context.toTextChatScreen,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Text(
                      context.strings.homeTitleTopics,
                      style: context.text.titleSmall,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: data != null
                        ? TopicsList(topics: data.topics)
                        : Container(
                            width: 385,
                            height: 140,
                            decoration: BoxDecoration(
                              color: context.colors.mainPrimary,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
