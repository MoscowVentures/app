// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_answer_request_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionAnswerRequestData _$QuestionAnswerRequestDataFromJson(
    Map<String, dynamic> json) {
  return _QuestionAnswerRequestData.fromJson(json);
}

/// @nodoc
mixin _$QuestionAnswerRequestData {
  @JsonKey(name: 'answers')
  List<String> get answers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionAnswerRequestDataCopyWith<QuestionAnswerRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionAnswerRequestDataCopyWith<$Res> {
  factory $QuestionAnswerRequestDataCopyWith(QuestionAnswerRequestData value,
          $Res Function(QuestionAnswerRequestData) then) =
      _$QuestionAnswerRequestDataCopyWithImpl<$Res, QuestionAnswerRequestData>;
  @useResult
  $Res call({@JsonKey(name: 'answers') List<String> answers});
}

/// @nodoc
class _$QuestionAnswerRequestDataCopyWithImpl<$Res,
        $Val extends QuestionAnswerRequestData>
    implements $QuestionAnswerRequestDataCopyWith<$Res> {
  _$QuestionAnswerRequestDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answers = null,
  }) {
    return _then(_value.copyWith(
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionAnswerRequestDataImplCopyWith<$Res>
    implements $QuestionAnswerRequestDataCopyWith<$Res> {
  factory _$$QuestionAnswerRequestDataImplCopyWith(
          _$QuestionAnswerRequestDataImpl value,
          $Res Function(_$QuestionAnswerRequestDataImpl) then) =
      __$$QuestionAnswerRequestDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'answers') List<String> answers});
}

/// @nodoc
class __$$QuestionAnswerRequestDataImplCopyWithImpl<$Res>
    extends _$QuestionAnswerRequestDataCopyWithImpl<$Res,
        _$QuestionAnswerRequestDataImpl>
    implements _$$QuestionAnswerRequestDataImplCopyWith<$Res> {
  __$$QuestionAnswerRequestDataImplCopyWithImpl(
      _$QuestionAnswerRequestDataImpl _value,
      $Res Function(_$QuestionAnswerRequestDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answers = null,
  }) {
    return _then(_$QuestionAnswerRequestDataImpl(
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionAnswerRequestDataImpl implements _QuestionAnswerRequestData {
  const _$QuestionAnswerRequestDataImpl(
      {@JsonKey(name: 'answers') required final List<String> answers})
      : _answers = answers;

  factory _$QuestionAnswerRequestDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionAnswerRequestDataImplFromJson(json);

  final List<String> _answers;
  @override
  @JsonKey(name: 'answers')
  List<String> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString() {
    return 'QuestionAnswerRequestData(answers: $answers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionAnswerRequestDataImpl &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionAnswerRequestDataImplCopyWith<_$QuestionAnswerRequestDataImpl>
      get copyWith => __$$QuestionAnswerRequestDataImplCopyWithImpl<
          _$QuestionAnswerRequestDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionAnswerRequestDataImplToJson(
      this,
    );
  }
}

abstract class _QuestionAnswerRequestData implements QuestionAnswerRequestData {
  const factory _QuestionAnswerRequestData(
          {@JsonKey(name: 'answers') required final List<String> answers}) =
      _$QuestionAnswerRequestDataImpl;

  factory _QuestionAnswerRequestData.fromJson(Map<String, dynamic> json) =
      _$QuestionAnswerRequestDataImpl.fromJson;

  @override
  @JsonKey(name: 'answers')
  List<String> get answers;
  @override
  @JsonKey(ignore: true)
  _$$QuestionAnswerRequestDataImplCopyWith<_$QuestionAnswerRequestDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
