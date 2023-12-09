import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_answer_response_data.freezed.dart';
part 'question_answer_response_data.g.dart';

@freezed
class QuestionAnswerResponseData with _$QuestionAnswerResponseData {
  const factory QuestionAnswerResponseData({
    @JsonKey(name: 'correct') required bool correct,
  }) = _QuestionAnswerResponseData;

  factory QuestionAnswerResponseData.fromJson(Map<String, dynamic> json) =>
      _$QuestionAnswerResponseDataFromJson(json);
}
