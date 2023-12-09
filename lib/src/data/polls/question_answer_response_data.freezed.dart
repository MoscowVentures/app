// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_answer_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionAnswerResponseData _$QuestionAnswerResponseDataFromJson(
    Map<String, dynamic> json) {
  return _QuestionAnswerResponseData.fromJson(json);
}

/// @nodoc
mixin _$QuestionAnswerResponseData {
  @JsonKey(name: 'correct')
  bool get correct => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionAnswerResponseDataCopyWith<QuestionAnswerResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionAnswerResponseDataCopyWith<$Res> {
  factory $QuestionAnswerResponseDataCopyWith(QuestionAnswerResponseData value,
          $Res Function(QuestionAnswerResponseData) then) =
      _$QuestionAnswerResponseDataCopyWithImpl<$Res,
          QuestionAnswerResponseData>;
  @useResult
  $Res call({@JsonKey(name: 'correct') bool correct});
}

/// @nodoc
class _$QuestionAnswerResponseDataCopyWithImpl<$Res,
        $Val extends QuestionAnswerResponseData>
    implements $QuestionAnswerResponseDataCopyWith<$Res> {
  _$QuestionAnswerResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? correct = null,
  }) {
    return _then(_value.copyWith(
      correct: null == correct
          ? _value.correct
          : correct // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionAnswerResponseDataImplCopyWith<$Res>
    implements $QuestionAnswerResponseDataCopyWith<$Res> {
  factory _$$QuestionAnswerResponseDataImplCopyWith(
          _$QuestionAnswerResponseDataImpl value,
          $Res Function(_$QuestionAnswerResponseDataImpl) then) =
      __$$QuestionAnswerResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'correct') bool correct});
}

/// @nodoc
class __$$QuestionAnswerResponseDataImplCopyWithImpl<$Res>
    extends _$QuestionAnswerResponseDataCopyWithImpl<$Res,
        _$QuestionAnswerResponseDataImpl>
    implements _$$QuestionAnswerResponseDataImplCopyWith<$Res> {
  __$$QuestionAnswerResponseDataImplCopyWithImpl(
      _$QuestionAnswerResponseDataImpl _value,
      $Res Function(_$QuestionAnswerResponseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? correct = null,
  }) {
    return _then(_$QuestionAnswerResponseDataImpl(
      correct: null == correct
          ? _value.correct
          : correct // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionAnswerResponseDataImpl implements _QuestionAnswerResponseData {
  const _$QuestionAnswerResponseDataImpl(
      {@JsonKey(name: 'correct') required this.correct});

  factory _$QuestionAnswerResponseDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$QuestionAnswerResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'correct')
  final bool correct;

  @override
  String toString() {
    return 'QuestionAnswerResponseData(correct: $correct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionAnswerResponseDataImpl &&
            (identical(other.correct, correct) || other.correct == correct));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, correct);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionAnswerResponseDataImplCopyWith<_$QuestionAnswerResponseDataImpl>
      get copyWith => __$$QuestionAnswerResponseDataImplCopyWithImpl<
          _$QuestionAnswerResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionAnswerResponseDataImplToJson(
      this,
    );
  }
}

abstract class _QuestionAnswerResponseData
    implements QuestionAnswerResponseData {
  const factory _QuestionAnswerResponseData(
          {@JsonKey(name: 'correct') required final bool correct}) =
      _$QuestionAnswerResponseDataImpl;

  factory _QuestionAnswerResponseData.fromJson(Map<String, dynamic> json) =
      _$QuestionAnswerResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'correct')
  bool get correct;
  @override
  @JsonKey(ignore: true)
  _$$QuestionAnswerResponseDataImplCopyWith<_$QuestionAnswerResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
