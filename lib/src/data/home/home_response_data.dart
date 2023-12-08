import 'package:freezed_annotation/freezed_annotation.dart';

import 'story_response_data.dart';
import 'topic_response_data.dart';

part 'home_response_data.freezed.dart';
part 'home_response_data.g.dart';

@freezed
class HomeResponseData with _$HomeResponseData {
  const factory HomeResponseData({
    @JsonKey(name: 'themes') required List<TopicResponseData> topics,
    @JsonKey(name: 'stories') required List<StoryResponseData> stories,
  }) = _HomeResponseData;

  factory HomeResponseData.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseDataFromJson(json);
}
