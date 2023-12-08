// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_request_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterRequestData _$RegisterRequestDataFromJson(Map<String, dynamic> json) {
  return _RegisterRequestData.fromJson(json);
}

/// @nodoc
mixin _$RegisterRequestData {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'age')
  int get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterRequestDataCopyWith<RegisterRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterRequestDataCopyWith<$Res> {
  factory $RegisterRequestDataCopyWith(
          RegisterRequestData value, $Res Function(RegisterRequestData) then) =
      _$RegisterRequestDataCopyWithImpl<$Res, RegisterRequestData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'age') int age});
}

/// @nodoc
class _$RegisterRequestDataCopyWithImpl<$Res, $Val extends RegisterRequestData>
    implements $RegisterRequestDataCopyWith<$Res> {
  _$RegisterRequestDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
    Object? age = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterRequestDataImplCopyWith<$Res>
    implements $RegisterRequestDataCopyWith<$Res> {
  factory _$$RegisterRequestDataImplCopyWith(_$RegisterRequestDataImpl value,
          $Res Function(_$RegisterRequestDataImpl) then) =
      __$$RegisterRequestDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'age') int age});
}

/// @nodoc
class __$$RegisterRequestDataImplCopyWithImpl<$Res>
    extends _$RegisterRequestDataCopyWithImpl<$Res, _$RegisterRequestDataImpl>
    implements _$$RegisterRequestDataImplCopyWith<$Res> {
  __$$RegisterRequestDataImplCopyWithImpl(_$RegisterRequestDataImpl _value,
      $Res Function(_$RegisterRequestDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
    Object? age = null,
  }) {
    return _then(_$RegisterRequestDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterRequestDataImpl implements _RegisterRequestData {
  const _$RegisterRequestDataImpl(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'phone') required this.phone,
      @JsonKey(name: 'age') required this.age});

  factory _$RegisterRequestDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterRequestDataImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'phone')
  final String phone;
  @override
  @JsonKey(name: 'age')
  final int age;

  @override
  String toString() {
    return 'RegisterRequestData(name: $name, phone: $phone, age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterRequestDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, phone, age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterRequestDataImplCopyWith<_$RegisterRequestDataImpl> get copyWith =>
      __$$RegisterRequestDataImplCopyWithImpl<_$RegisterRequestDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterRequestDataImplToJson(
      this,
    );
  }
}

abstract class _RegisterRequestData implements RegisterRequestData {
  const factory _RegisterRequestData(
          {@JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'phone') required final String phone,
          @JsonKey(name: 'age') required final int age}) =
      _$RegisterRequestDataImpl;

  factory _RegisterRequestData.fromJson(Map<String, dynamic> json) =
      _$RegisterRequestDataImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'phone')
  String get phone;
  @override
  @JsonKey(name: 'age')
  int get age;
  @override
  @JsonKey(ignore: true)
  _$$RegisterRequestDataImplCopyWith<_$RegisterRequestDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
