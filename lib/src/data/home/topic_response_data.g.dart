// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopicResponseDataImpl _$$TopicResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TopicResponseDataImpl(
      uuid: json['uuid'] as String,
      title: json['title'] as String,
      text: json['text'] as String,
      imageUrl: json['image_url'] as String,
    );

Map<String, dynamic> _$$TopicResponseDataImplToJson(
        _$TopicResponseDataImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'title': instance.title,
      'text': instance.text,
      'image_url': instance.imageUrl,
    };
