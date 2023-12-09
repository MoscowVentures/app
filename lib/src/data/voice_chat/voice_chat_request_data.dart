import 'package:freezed_annotation/freezed_annotation.dart';

part 'voice_chat_request_data.freezed.dart';
part 'voice_chat_request_data.g.dart';

@freezed
class VoiceChatRequestData with _$VoiceChatRequestData {
  const factory VoiceChatRequestData({
    @JsonKey(name: 'text') required String text,
  }) = _VoiceChatRequestData;

  factory VoiceChatRequestData.fromJson(Map<String, dynamic> json) =>
      _$VoiceChatRequestDataFromJson(json);
}
