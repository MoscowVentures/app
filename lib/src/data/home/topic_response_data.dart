import 'package:freezed_annotation/freezed_annotation.dart';

part 'topic_response_data.freezed.dart';
part 'topic_response_data.g.dart';

@freezed
class TopicResponseData with _$TopicResponseData {
  const factory TopicResponseData({
    @JsonKey(name: 'title') required String topics,
    @JsonKey(name: 'uuid') required String uuid,
  }) = _TopicResponseData;

  factory TopicResponseData.fromJson(Map<String, dynamic> json) =>
      _$TopicResponseDataFromJson(json);
}
