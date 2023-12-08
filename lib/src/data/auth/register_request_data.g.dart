// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterRequestDataImpl _$$RegisterRequestDataImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterRequestDataImpl(
      name: json['name'] as String,
      phone: json['phone'] as String,
      age: json['age'] as int,
    );

Map<String, dynamic> _$$RegisterRequestDataImplToJson(
        _$RegisterRequestDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'age': instance.age,
    };
