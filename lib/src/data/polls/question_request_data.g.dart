// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_request_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionRequestDataImpl _$$QuestionRequestDataImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionRequestDataImpl(
      topicsFilter:
          (json['themes'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$QuestionRequestDataImplToJson(
        _$QuestionRequestDataImpl instance) =>
    <String, dynamic>{
      'themes': instance.topicsFilter,
    };
