import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_answer_request_data.freezed.dart';
part 'question_answer_request_data.g.dart';

@freezed
class QuestionAnswerRequestData with _$QuestionAnswerRequestData {
  const factory QuestionAnswerRequestData({
    @JsonKey(name: 'answers') required List<String> answers,
  }) = _QuestionAnswerRequestData;

  factory QuestionAnswerRequestData.fromJson(Map<String, dynamic> json) =>
      _$QuestionAnswerRequestDataFromJson(json);
}
