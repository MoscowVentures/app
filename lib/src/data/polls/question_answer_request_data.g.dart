// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_answer_request_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionAnswerRequestDataImpl _$$QuestionAnswerRequestDataImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionAnswerRequestDataImpl(
      answers:
          (json['answers'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$QuestionAnswerRequestDataImplToJson(
        _$QuestionAnswerRequestDataImpl instance) =>
    <String, dynamic>{
      'answers': instance.answers,
    };
