import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:record/record.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:uuid/uuid.dart';

import '../../api/voice_chat_api.dart';
import '../../data/voice_chat/voice_chat_state.dart';
import '../../utils/logger.dart';

class VoiceChatController extends StateNotifier<VoiceChatState> {
  VoiceChatController(this._api) : super(const VoiceChatState());

  final VoiceChatApi _api;
  final record = AudioRecorder();
  final player = AudioPlayer();
  final uuid = const Uuid();
  final speech = SpeechToText();

  void setLoading(bool isLoading) =>
      state = state.copyWith(isLoading: isLoading);

  void setError(bool isError) => state = state.copyWith(isError: isError);

  Future<void> _playAudio(String path) async {
    logger.d('playAudio($path)');
    await player.play(
      DeviceFileSource(path),
      mode: PlayerMode.lowLatency,
      volume: 1,
    );
  }

  Future<void> _sendText(String text) async {
    logger.d('_sendText($text)');
    try {
      setLoading(true);
      final path = await _api.sendText(text);
      await _playAudio(path);
      setLoading(false);
    } on Object catch (e, s) {
      logger.e('Error: $e\n$s');
      setLoading(false);
      setError(true);
    }
  }

  Future<void> init() async {
    await speech.initialize(onStatus: print);
    await _api.sendText('');
  }

  Future<void> startRecord() => speech.listen(
        onResult: (result) {
          if (result.finalResult) {
            final words = result.recognizedWords;
            logger.d('Recognized words: $words');
            _sendText(result.recognizedWords);
          }
        },
      );

  Future<void> stopRecord() => speech.stop();
}
