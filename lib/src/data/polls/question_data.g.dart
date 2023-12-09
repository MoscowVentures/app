// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionDataImpl _$$QuestionDataImplFromJson(Map<String, dynamic> json) =>
    _$QuestionDataImpl(
      answers:
          (json['answers'] as List<dynamic>).map((e) => e as String).toList(),
      theme: json['theme'] as String,
      title: json['title'] as String,
      uuid: json['uuid'] as String,
    );

Map<String, dynamic> _$$QuestionDataImplToJson(_$QuestionDataImpl instance) =>
    <String, dynamic>{
      'answers': instance.answers,
      'theme': instance.theme,
      'title': instance.title,
      'uuid': instance.uuid,
    };
