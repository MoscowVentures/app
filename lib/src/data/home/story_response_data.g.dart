// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoryResponseDataImpl _$$StoryResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$StoryResponseDataImpl(
      title: json['title'] as String,
      text: json['text'] as String,
      url: json['image_url'] as String,
      align: $enumDecode(_$HomeAlignEnumMap, json['align']),
    );

Map<String, dynamic> _$$StoryResponseDataImplToJson(
        _$StoryResponseDataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'text': instance.text,
      'image_url': instance.url,
      'align': _$HomeAlignEnumMap[instance.align]!,
    };

const _$HomeAlignEnumMap = {
  HomeAlign.top: 'top',
  HomeAlign.center: 'center',
  HomeAlign.bottom: 'bottom',
};
