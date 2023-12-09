import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/polls_api.dart';
import '../../data/polls/polls_state.dart';
import '../../data/polls/question_answer_request_data.dart';
import '../../data/polls/question_answer_response_data.dart';
import '../../data/polls/question_request_data.dart';
import '../../data/polls/question_response_data.dart';
import '../../utils/logger.dart';

class PollsController extends StateNotifier<PollsState> {
  PollsController(this._api) : super(const PollsState());

  final PollsApi _api;

  void setLoading(bool isLoading) =>
      state = state.copyWith(isLoading: isLoading);

  void setError(bool isError) => state = state.copyWith(isError: isError);

  void setQuestionData(QuestionResponseData data) =>
      state = state.copyWith(questionData: data);

  void setQuestionAnswerData(QuestionAnswerResponseData data) =>
      state = state.copyWith(questionAnswerData: data);

  Future<void> onRetry(String topicFilter) {
    setError(false);
    return loadQuestion(topicFilter);
  }

  Future<void> loadQuestion(String topicFilter) async {
    logger.d('loadQuestion($topicFilter)');
    try {
      setLoading(true);
      final response = await _api.nextQuestion(
        QuestionRequestData(
          topicsFilter: [topicFilter],
        ),
      );
      setQuestionData(response);
      setLoading(false);
    } on Object catch (e, s) {
      logger.e('Error: $e\n$s');
      setLoading(false);
      setError(true);
    }
  }

  Future<void> answerQuestion(String answer, String answerId) async {
    logger.d('answerQuestion($answer)');
    try {
      setLoading(true);
      final response = await _api.answerQuestion(
        QuestionAnswerRequestData(
          answers: [answer],
        ),
        answerId,
      );
      setQuestionAnswerData(response);
      setLoading(false);
    } on Object catch (e, s) {
      logger.e('Error: $e\n$s');
      setLoading(false);
      setError(true);
    }
  }
}
