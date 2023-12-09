import 'package:freezed_annotation/freezed_annotation.dart';

import 'question_data.dart';

part 'question_response_data.freezed.dart';
part 'question_response_data.g.dart';

@freezed
class QuestionResponseData with _$QuestionResponseData {
  const factory QuestionResponseData({
    @JsonKey(name: 'question') required QuestionData question,
  }) = _QuestionResponseData;

  factory QuestionResponseData.fromJson(Map<String, dynamic> json) =>
      _$QuestionResponseDataFromJson(json);
}
