import 'package:freezed_annotation/freezed_annotation.dart';

part 'story_response_data.freezed.dart';
part 'story_response_data.g.dart';

@freezed
class StoryResponseData with _$StoryResponseData {
  const factory StoryResponseData({
    @JsonKey(name: 'url') required String url,
    @JsonKey(name: 'text') required String text,
  }) = _StoryResponseData;

  factory StoryResponseData.fromJson(Map<String, dynamic> json) =>
      _$StoryResponseDataFromJson(json);
}
