import 'package:freezed_annotation/freezed_annotation.dart';

part 'topic_response_data.freezed.dart';
part 'topic_response_data.g.dart';

@freezed
class TopicResponseData with _$TopicResponseData {
  const factory TopicResponseData({
    @JsonKey(name: 'uuid') required String uuid,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'text') required String text,
    @JsonKey(name: 'image_url') required String imageUrl,
  }) = _TopicResponseData;

  factory TopicResponseData.fromJson(Map<String, dynamic> json) =>
      _$TopicResponseDataFromJson(json);
}
