// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConfirmResponseData _$ConfirmResponseDataFromJson(Map<String, dynamic> json) {
  return _ConfirmResponseData.fromJson(json);
}

/// @nodoc
mixin _$ConfirmResponseData {
  @JsonKey(name: 'token')
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfirmResponseDataCopyWith<ConfirmResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmResponseDataCopyWith<$Res> {
  factory $ConfirmResponseDataCopyWith(
          ConfirmResponseData value, $Res Function(ConfirmResponseData) then) =
      _$ConfirmResponseDataCopyWithImpl<$Res, ConfirmResponseData>;
  @useResult
  $Res call({@JsonKey(name: 'token') String token});
}

/// @nodoc
class _$ConfirmResponseDataCopyWithImpl<$Res, $Val extends ConfirmResponseData>
    implements $ConfirmResponseDataCopyWith<$Res> {
  _$ConfirmResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfirmResponseDataImplCopyWith<$Res>
    implements $ConfirmResponseDataCopyWith<$Res> {
  factory _$$ConfirmResponseDataImplCopyWith(_$ConfirmResponseDataImpl value,
          $Res Function(_$ConfirmResponseDataImpl) then) =
      __$$ConfirmResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'token') String token});
}

/// @nodoc
class __$$ConfirmResponseDataImplCopyWithImpl<$Res>
    extends _$ConfirmResponseDataCopyWithImpl<$Res, _$ConfirmResponseDataImpl>
    implements _$$ConfirmResponseDataImplCopyWith<$Res> {
  __$$ConfirmResponseDataImplCopyWithImpl(_$ConfirmResponseDataImpl _value,
      $Res Function(_$ConfirmResponseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$ConfirmResponseDataImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfirmResponseDataImpl implements _ConfirmResponseData {
  const _$ConfirmResponseDataImpl(
      {@JsonKey(name: 'token') required this.token});

  factory _$ConfirmResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'token')
  final String token;

  @override
  String toString() {
    return 'ConfirmResponseData(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmResponseDataImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmResponseDataImplCopyWith<_$ConfirmResponseDataImpl> get copyWith =>
      __$$ConfirmResponseDataImplCopyWithImpl<_$ConfirmResponseDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmResponseDataImplToJson(
      this,
    );
  }
}

abstract class _ConfirmResponseData implements ConfirmResponseData {
  const factory _ConfirmResponseData(
          {@JsonKey(name: 'token') required final String token}) =
      _$ConfirmResponseDataImpl;

  factory _ConfirmResponseData.fromJson(Map<String, dynamic> json) =
      _$ConfirmResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'token')
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$ConfirmResponseDataImplCopyWith<_$ConfirmResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
