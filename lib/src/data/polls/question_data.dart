import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_data.freezed.dart';
part 'question_data.g.dart';

@freezed
class QuestionData with _$QuestionData {
  const factory QuestionData({
    @JsonKey(name: 'answers') required List<String> answers,
    @JsonKey(name: 'theme') required String theme,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'uuid') required String uuid,
  }) = _QuestionData;

  factory QuestionData.fromJson(Map<String, dynamic> json) =>
      _$QuestionDataFromJson(json);
}
