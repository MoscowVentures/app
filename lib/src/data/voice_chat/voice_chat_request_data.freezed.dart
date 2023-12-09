// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voice_chat_request_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VoiceChatRequestData _$VoiceChatRequestDataFromJson(Map<String, dynamic> json) {
  return _VoiceChatRequestData.fromJson(json);
}

/// @nodoc
mixin _$VoiceChatRequestData {
  @JsonKey(name: 'text')
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VoiceChatRequestDataCopyWith<VoiceChatRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoiceChatRequestDataCopyWith<$Res> {
  factory $VoiceChatRequestDataCopyWith(VoiceChatRequestData value,
          $Res Function(VoiceChatRequestData) then) =
      _$VoiceChatRequestDataCopyWithImpl<$Res, VoiceChatRequestData>;
  @useResult
  $Res call({@JsonKey(name: 'text') String text});
}

/// @nodoc
class _$VoiceChatRequestDataCopyWithImpl<$Res,
        $Val extends VoiceChatRequestData>
    implements $VoiceChatRequestDataCopyWith<$Res> {
  _$VoiceChatRequestDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VoiceChatRequestDataImplCopyWith<$Res>
    implements $VoiceChatRequestDataCopyWith<$Res> {
  factory _$$VoiceChatRequestDataImplCopyWith(_$VoiceChatRequestDataImpl value,
          $Res Function(_$VoiceChatRequestDataImpl) then) =
      __$$VoiceChatRequestDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'text') String text});
}

/// @nodoc
class __$$VoiceChatRequestDataImplCopyWithImpl<$Res>
    extends _$VoiceChatRequestDataCopyWithImpl<$Res, _$VoiceChatRequestDataImpl>
    implements _$$VoiceChatRequestDataImplCopyWith<$Res> {
  __$$VoiceChatRequestDataImplCopyWithImpl(_$VoiceChatRequestDataImpl _value,
      $Res Function(_$VoiceChatRequestDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$VoiceChatRequestDataImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VoiceChatRequestDataImpl implements _VoiceChatRequestData {
  const _$VoiceChatRequestDataImpl({@JsonKey(name: 'text') required this.text});

  factory _$VoiceChatRequestDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$VoiceChatRequestDataImplFromJson(json);

  @override
  @JsonKey(name: 'text')
  final String text;

  @override
  String toString() {
    return 'VoiceChatRequestData(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoiceChatRequestDataImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VoiceChatRequestDataImplCopyWith<_$VoiceChatRequestDataImpl>
      get copyWith =>
          __$$VoiceChatRequestDataImplCopyWithImpl<_$VoiceChatRequestDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VoiceChatRequestDataImplToJson(
      this,
    );
  }
}

abstract class _VoiceChatRequestData implements VoiceChatRequestData {
  const factory _VoiceChatRequestData(
          {@JsonKey(name: 'text') required final String text}) =
      _$VoiceChatRequestDataImpl;

  factory _VoiceChatRequestData.fromJson(Map<String, dynamic> json) =
      _$VoiceChatRequestDataImpl.fromJson;

  @override
  @JsonKey(name: 'text')
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$VoiceChatRequestDataImplCopyWith<_$VoiceChatRequestDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
