// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_request_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConfirmRequestData _$ConfirmRequestDataFromJson(Map<String, dynamic> json) {
  return _ConfirmRequestData.fromJson(json);
}

/// @nodoc
mixin _$ConfirmRequestData {
  @JsonKey(name: 'phone')
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfirmRequestDataCopyWith<ConfirmRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmRequestDataCopyWith<$Res> {
  factory $ConfirmRequestDataCopyWith(
          ConfirmRequestData value, $Res Function(ConfirmRequestData) then) =
      _$ConfirmRequestDataCopyWithImpl<$Res, ConfirmRequestData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'code') String code});
}

/// @nodoc
class _$ConfirmRequestDataCopyWithImpl<$Res, $Val extends ConfirmRequestData>
    implements $ConfirmRequestDataCopyWith<$Res> {
  _$ConfirmRequestDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfirmRequestDataImplCopyWith<$Res>
    implements $ConfirmRequestDataCopyWith<$Res> {
  factory _$$ConfirmRequestDataImplCopyWith(_$ConfirmRequestDataImpl value,
          $Res Function(_$ConfirmRequestDataImpl) then) =
      __$$ConfirmRequestDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'code') String code});
}

/// @nodoc
class __$$ConfirmRequestDataImplCopyWithImpl<$Res>
    extends _$ConfirmRequestDataCopyWithImpl<$Res, _$ConfirmRequestDataImpl>
    implements _$$ConfirmRequestDataImplCopyWith<$Res> {
  __$$ConfirmRequestDataImplCopyWithImpl(_$ConfirmRequestDataImpl _value,
      $Res Function(_$ConfirmRequestDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? code = null,
  }) {
    return _then(_$ConfirmRequestDataImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfirmRequestDataImpl implements _ConfirmRequestData {
  const _$ConfirmRequestDataImpl(
      {@JsonKey(name: 'phone') required this.phone,
      @JsonKey(name: 'code') required this.code});

  factory _$ConfirmRequestDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmRequestDataImplFromJson(json);

  @override
  @JsonKey(name: 'phone')
  final String phone;
  @override
  @JsonKey(name: 'code')
  final String code;

  @override
  String toString() {
    return 'ConfirmRequestData(phone: $phone, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmRequestDataImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phone, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmRequestDataImplCopyWith<_$ConfirmRequestDataImpl> get copyWith =>
      __$$ConfirmRequestDataImplCopyWithImpl<_$ConfirmRequestDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmRequestDataImplToJson(
      this,
    );
  }
}

abstract class _ConfirmRequestData implements ConfirmRequestData {
  const factory _ConfirmRequestData(
          {@JsonKey(name: 'phone') required final String phone,
          @JsonKey(name: 'code') required final String code}) =
      _$ConfirmRequestDataImpl;

  factory _ConfirmRequestData.fromJson(Map<String, dynamic> json) =
      _$ConfirmRequestDataImpl.fromJson;

  @override
  @JsonKey(name: 'phone')
  String get phone;
  @override
  @JsonKey(name: 'code')
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$ConfirmRequestDataImplCopyWith<_$ConfirmRequestDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
