import 'package:freezed_annotation/freezed_annotation.dart';

import 'question_answer_response_data.dart';
import 'question_response_data.dart';

part 'polls_state.freezed.dart';
part 'polls_state.g.dart';

@freezed
class PollsState with _$PollsState {
  const factory PollsState({
    QuestionResponseData? questionData,
    QuestionAnswerResponseData? questionAnswerData,
    @Default(false) bool isLoading,
    @Default(false) bool isError,
  }) = _PollsState;

  factory PollsState.fromJson(Map<String, dynamic> json) =>
      _$PollsStateFromJson(json);
}
