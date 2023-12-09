// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'polls_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PollsState _$PollsStateFromJson(Map<String, dynamic> json) {
  return _PollsState.fromJson(json);
}

/// @nodoc
mixin _$PollsState {
  QuestionResponseData? get questionData => throw _privateConstructorUsedError;
  QuestionAnswerResponseData? get questionAnswerData =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PollsStateCopyWith<PollsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollsStateCopyWith<$Res> {
  factory $PollsStateCopyWith(
          PollsState value, $Res Function(PollsState) then) =
      _$PollsStateCopyWithImpl<$Res, PollsState>;
  @useResult
  $Res call(
      {QuestionResponseData? questionData,
      QuestionAnswerResponseData? questionAnswerData,
      bool isLoading,
      bool isError});

  $QuestionResponseDataCopyWith<$Res>? get questionData;
  $QuestionAnswerResponseDataCopyWith<$Res>? get questionAnswerData;
}

/// @nodoc
class _$PollsStateCopyWithImpl<$Res, $Val extends PollsState>
    implements $PollsStateCopyWith<$Res> {
  _$PollsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionData = freezed,
    Object? questionAnswerData = freezed,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      questionData: freezed == questionData
          ? _value.questionData
          : questionData // ignore: cast_nullable_to_non_nullable
              as QuestionResponseData?,
      questionAnswerData: freezed == questionAnswerData
          ? _value.questionAnswerData
          : questionAnswerData // ignore: cast_nullable_to_non_nullable
              as QuestionAnswerResponseData?,
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

  @override
  @pragma('vm:prefer-inline')
  $QuestionResponseDataCopyWith<$Res>? get questionData {
    if (_value.questionData == null) {
      return null;
    }

    return $QuestionResponseDataCopyWith<$Res>(_value.questionData!, (value) {
      return _then(_value.copyWith(questionData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionAnswerResponseDataCopyWith<$Res>? get questionAnswerData {
    if (_value.questionAnswerData == null) {
      return null;
    }

    return $QuestionAnswerResponseDataCopyWith<$Res>(_value.questionAnswerData!,
        (value) {
      return _then(_value.copyWith(questionAnswerData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PollsStateImplCopyWith<$Res>
    implements $PollsStateCopyWith<$Res> {
  factory _$$PollsStateImplCopyWith(
          _$PollsStateImpl value, $Res Function(_$PollsStateImpl) then) =
      __$$PollsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {QuestionResponseData? questionData,
      QuestionAnswerResponseData? questionAnswerData,
      bool isLoading,
      bool isError});

  @override
  $QuestionResponseDataCopyWith<$Res>? get questionData;
  @override
  $QuestionAnswerResponseDataCopyWith<$Res>? get questionAnswerData;
}

/// @nodoc
class __$$PollsStateImplCopyWithImpl<$Res>
    extends _$PollsStateCopyWithImpl<$Res, _$PollsStateImpl>
    implements _$$PollsStateImplCopyWith<$Res> {
  __$$PollsStateImplCopyWithImpl(
      _$PollsStateImpl _value, $Res Function(_$PollsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionData = freezed,
    Object? questionAnswerData = freezed,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$PollsStateImpl(
      questionData: freezed == questionData
          ? _value.questionData
          : questionData // ignore: cast_nullable_to_non_nullable
              as QuestionResponseData?,
      questionAnswerData: freezed == questionAnswerData
          ? _value.questionAnswerData
          : questionAnswerData // ignore: cast_nullable_to_non_nullable
              as QuestionAnswerResponseData?,
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
class _$PollsStateImpl implements _PollsState {
  const _$PollsStateImpl(
      {this.questionData,
      this.questionAnswerData,
      this.isLoading = false,
      this.isError = false});

  factory _$PollsStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PollsStateImplFromJson(json);

  @override
  final QuestionResponseData? questionData;
  @override
  final QuestionAnswerResponseData? questionAnswerData;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;

  @override
  String toString() {
    return 'PollsState(questionData: $questionData, questionAnswerData: $questionAnswerData, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PollsStateImpl &&
            (identical(other.questionData, questionData) ||
                other.questionData == questionData) &&
            (identical(other.questionAnswerData, questionAnswerData) ||
                other.questionAnswerData == questionAnswerData) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, questionData, questionAnswerData, isLoading, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PollsStateImplCopyWith<_$PollsStateImpl> get copyWith =>
      __$$PollsStateImplCopyWithImpl<_$PollsStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PollsStateImplToJson(
      this,
    );
  }
}

abstract class _PollsState implements PollsState {
  const factory _PollsState(
      {final QuestionResponseData? questionData,
      final QuestionAnswerResponseData? questionAnswerData,
      final bool isLoading,
      final bool isError}) = _$PollsStateImpl;

  factory _PollsState.fromJson(Map<String, dynamic> json) =
      _$PollsStateImpl.fromJson;

  @override
  QuestionResponseData? get questionData;
  @override
  QuestionAnswerResponseData? get questionAnswerData;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$PollsStateImplCopyWith<_$PollsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
