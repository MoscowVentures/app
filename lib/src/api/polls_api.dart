import 'package:dio/dio.dart';

import '../data/polls/question_answer_request_data.dart';
import '../data/polls/question_answer_response_data.dart';
import '../data/polls/question_request_data.dart';
import '../data/polls/question_response_data.dart';
import 'app_api_constants.dart';

class PollsApi {
  PollsApi(this._dio);

  final Dio _dio;

  Future<QuestionResponseData> nextQuestion(QuestionRequestData data) async {
    final response = await _dio.post(
      AppApiConstants.question,
      data: data.toJson(),
      queryParameters: {
        'failed': true,
        'completed': true,
        'neuro': false,
      },
    );
    return QuestionResponseData.fromJson(response.data);
  }

  Future<QuestionAnswerResponseData> answerQuestion(
    QuestionAnswerRequestData data,
    String answerId,
  ) async {
    final response = await _dio.post(
      '${AppApiConstants.question}/$answerId/answer',
      data: data.toJson(),
    );
    return QuestionAnswerResponseData.fromJson(response.data);
  }
}
