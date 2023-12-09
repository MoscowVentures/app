// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voice_chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VoiceChatState _$VoiceChatStateFromJson(Map<String, dynamic> json) {
  return _VoiceChatState.fromJson(json);
}

/// @nodoc
mixin _$VoiceChatState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VoiceChatStateCopyWith<VoiceChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoiceChatStateCopyWith<$Res> {
  factory $VoiceChatStateCopyWith(
          VoiceChatState value, $Res Function(VoiceChatState) then) =
      _$VoiceChatStateCopyWithImpl<$Res, VoiceChatState>;
  @useResult
  $Res call({bool isLoading, bool isError});
}

/// @nodoc
class _$VoiceChatStateCopyWithImpl<$Res, $Val extends VoiceChatState>
    implements $VoiceChatStateCopyWith<$Res> {
  _$VoiceChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VoiceChatStateImplCopyWith<$Res>
    implements $VoiceChatStateCopyWith<$Res> {
  factory _$$VoiceChatStateImplCopyWith(_$VoiceChatStateImpl value,
          $Res Function(_$VoiceChatStateImpl) then) =
      __$$VoiceChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isError});
}

/// @nodoc
class __$$VoiceChatStateImplCopyWithImpl<$Res>
    extends _$VoiceChatStateCopyWithImpl<$Res, _$VoiceChatStateImpl>
    implements _$$VoiceChatStateImplCopyWith<$Res> {
  __$$VoiceChatStateImplCopyWithImpl(
      _$VoiceChatStateImpl _value, $Res Function(_$VoiceChatStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$VoiceChatStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VoiceChatStateImpl implements _VoiceChatState {
  const _$VoiceChatStateImpl({this.isLoading = false, this.isError = false});

  factory _$VoiceChatStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$VoiceChatStateImplFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;

  @override
  String toString() {
    return 'VoiceChatState(isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoiceChatStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VoiceChatStateImplCopyWith<_$VoiceChatStateImpl> get copyWith =>
      __$$VoiceChatStateImplCopyWithImpl<_$VoiceChatStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VoiceChatStateImplToJson(
      this,
    );
  }
}

abstract class _VoiceChatState implements VoiceChatState {
  const factory _VoiceChatState({final bool isLoading, final bool isError}) =
      _$VoiceChatStateImpl;

  factory _VoiceChatState.fromJson(Map<String, dynamic> json) =
      _$VoiceChatStateImpl.fromJson;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$VoiceChatStateImplCopyWith<_$VoiceChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
