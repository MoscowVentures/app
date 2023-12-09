import 'package:freezed_annotation/freezed_annotation.dart';

part 'voice_chat_state.freezed.dart';
part 'voice_chat_state.g.dart';

@freezed
class VoiceChatState with _$VoiceChatState {
  const factory VoiceChatState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
  }) = _VoiceChatState;

  factory VoiceChatState.fromJson(Map<String, dynamic> json) =>
      _$VoiceChatStateFromJson(json);
}
