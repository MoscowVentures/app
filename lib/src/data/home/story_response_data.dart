import 'package:freezed_annotation/freezed_annotation.dart';

import 'home_align_enum.dart';

part 'story_response_data.freezed.dart';
part 'story_response_data.g.dart';

@freezed
class StoryResponseData with _$StoryResponseData {
  const factory StoryResponseData({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'text') required String text,
    @JsonKey(name: 'image_url') required String url,
    @JsonKey(name: 'align') required HomeAlign align,
  }) = _StoryResponseData;

  factory StoryResponseData.fromJson(Map<String, dynamic> json) =>
      _$StoryResponseDataFromJson(json);
}
