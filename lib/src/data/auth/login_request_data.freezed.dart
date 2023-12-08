// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_request_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginRequestData _$LoginRequestDataFromJson(Map<String, dynamic> json) {
  return _LoginRequestData.fromJson(json);
}

/// @nodoc
mixin _$LoginRequestData {
  @JsonKey(name: 'phone')
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginRequestDataCopyWith<LoginRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginRequestDataCopyWith<$Res> {
  factory $LoginRequestDataCopyWith(
          LoginRequestData value, $Res Function(LoginRequestData) then) =
      _$LoginRequestDataCopyWithImpl<$Res, LoginRequestData>;
  @useResult
  $Res call({@JsonKey(name: 'phone') String phone});
}

/// @nodoc
class _$LoginRequestDataCopyWithImpl<$Res, $Val extends LoginRequestData>
    implements $LoginRequestDataCopyWith<$Res> {
  _$LoginRequestDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginRequestDataImplCopyWith<$Res>
    implements $LoginRequestDataCopyWith<$Res> {
  factory _$$LoginRequestDataImplCopyWith(_$LoginRequestDataImpl value,
          $Res Function(_$LoginRequestDataImpl) then) =
      __$$LoginRequestDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'phone') String phone});
}

/// @nodoc
class __$$LoginRequestDataImplCopyWithImpl<$Res>
    extends _$LoginRequestDataCopyWithImpl<$Res, _$LoginRequestDataImpl>
    implements _$$LoginRequestDataImplCopyWith<$Res> {
  __$$LoginRequestDataImplCopyWithImpl(_$LoginRequestDataImpl _value,
      $Res Function(_$LoginRequestDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$LoginRequestDataImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginRequestDataImpl implements _LoginRequestData {
  const _$LoginRequestDataImpl({@JsonKey(name: 'phone') required this.phone});

  factory _$LoginRequestDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginRequestDataImplFromJson(json);

  @override
  @JsonKey(name: 'phone')
  final String phone;

  @override
  String toString() {
    return 'LoginRequestData(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginRequestDataImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginRequestDataImplCopyWith<_$LoginRequestDataImpl> get copyWith =>
      __$$LoginRequestDataImplCopyWithImpl<_$LoginRequestDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginRequestDataImplToJson(
      this,
    );
  }
}

abstract class _LoginRequestData implements LoginRequestData {
  const factory _LoginRequestData(
          {@JsonKey(name: 'phone') required final String phone}) =
      _$LoginRequestDataImpl;

  factory _LoginRequestData.fromJson(Map<String, dynamic> json) =
      _$LoginRequestDataImpl.fromJson;

  @override
  @JsonKey(name: 'phone')
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$LoginRequestDataImplCopyWith<_$LoginRequestDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
