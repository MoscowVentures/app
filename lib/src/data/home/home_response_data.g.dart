// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeResponseDataImpl _$$HomeResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeResponseDataImpl(
      topics: (json['themes'] as List<dynamic>)
          .map((e) => TopicResponseData.fromJson(e as Map<String, dynamic>))
          .toList(),
      stories: (json['stories'] as List<dynamic>)
          .map((e) => StoryResponseData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomeResponseDataImplToJson(
        _$HomeResponseDataImpl instance) =>
    <String, dynamic>{
      'themes': instance.topics,
      'stories': instance.stories,
    };
