import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_request_data.freezed.dart';
part 'question_request_data.g.dart';

@freezed
class QuestionRequestData with _$QuestionRequestData {
  const factory QuestionRequestData({
    @JsonKey(name: 'themes') required List<String> topicsFilter,
  }) = _QuestionRequestData;

  factory QuestionRequestData.fromJson(Map<String, dynamic> json) =>
      _$QuestionRequestDataFromJson(json);
}
