// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'polls_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PollsStateImpl _$$PollsStateImplFromJson(Map<String, dynamic> json) =>
    _$PollsStateImpl(
      questionData: json['questionData'] == null
          ? null
          : QuestionResponseData.fromJson(
              json['questionData'] as Map<String, dynamic>),
      questionAnswerData: json['questionAnswerData'] == null
          ? null
          : QuestionAnswerResponseData.fromJson(
              json['questionAnswerData'] as Map<String, dynamic>),
      isLoading: json['isLoading'] as bool? ?? false,
      isError: json['isError'] as bool? ?? false,
    );

Map<String, dynamic> _$$PollsStateImplToJson(_$PollsStateImpl instance) =>
    <String, dynamic>{
      'questionData': instance.questionData,
      'questionAnswerData': instance.questionAnswerData,
      'isLoading': instance.isLoading,
      'isError': instance.isError,
    };
