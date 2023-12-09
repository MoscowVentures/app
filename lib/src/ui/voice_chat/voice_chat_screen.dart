import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../di/providers.dart';
import '../../utils/app_assets.dart';
import '../../utils/extensions.dart';

class VoiceChatScreen extends ConsumerStatefulWidget {
  const VoiceChatScreen({super.key});

  @override
  ConsumerState<VoiceChatScreen> createState() => _VoiceChatScreenState();
}

class _VoiceChatScreenState extends ConsumerState<VoiceChatScreen> {
  bool _isRecording = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration.zero,
      ref.read(voiceChatControllerProvider.notifier).init,
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(voiceChatControllerProvider.notifier);
    final state = ref.watch(voiceChatControllerProvider);

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    context.strings.voiceChatTitle,
                    style: context.text.titleMedium,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    context.strings.voiceChatSubtitle,
                    style: context.text.bodyLarge,
                  ),
                  const SizedBox(height: 28),
                  Image.asset(
                    AppAssets.wolf,
                    width: 271,
                    height: 271,
                  ),
                  const SizedBox(height: 30),
                  GestureDetector(
                    onTapDown: (details) {
                      setState(() => _isRecording = true);
                      controller.startRecord();
                    },
                    onTapUp: (details) {
                      setState(() => _isRecording = false);
                      controller.stopRecord();
                    },
                    child: Image.asset(
                      _isRecording ? AppAssets.microOn : AppAssets.microOff,
                      width: 271,
                      height: 271,
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            Positioned(
              right: 16,
              top: 0,
              child: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
