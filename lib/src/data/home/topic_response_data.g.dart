// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopicResponseDataImpl _$$TopicResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TopicResponseDataImpl(
      topics: json['title'] as String,
      uuid: json['uuid'] as String,
    );

Map<String, dynamic> _$$TopicResponseDataImplToJson(
        _$TopicResponseDataImpl instance) =>
    <String, dynamic>{
      'title': instance.topics,
      'uuid': instance.uuid,
    };
