// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionResponseData _$QuestionResponseDataFromJson(Map<String, dynamic> json) {
  return _QuestionResponseData.fromJson(json);
}

/// @nodoc
mixin _$QuestionResponseData {
  @JsonKey(name: 'question')
  QuestionData get question => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionResponseDataCopyWith<QuestionResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionResponseDataCopyWith<$Res> {
  factory $QuestionResponseDataCopyWith(QuestionResponseData value,
          $Res Function(QuestionResponseData) then) =
      _$QuestionResponseDataCopyWithImpl<$Res, QuestionResponseData>;
  @useResult
  $Res call({@JsonKey(name: 'question') QuestionData question});

  $QuestionDataCopyWith<$Res> get question;
}

/// @nodoc
class _$QuestionResponseDataCopyWithImpl<$Res,
        $Val extends QuestionResponseData>
    implements $QuestionResponseDataCopyWith<$Res> {
  _$QuestionResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as QuestionData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionDataCopyWith<$Res> get question {
    return $QuestionDataCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuestionResponseDataImplCopyWith<$Res>
    implements $QuestionResponseDataCopyWith<$Res> {
  factory _$$QuestionResponseDataImplCopyWith(_$QuestionResponseDataImpl value,
          $Res Function(_$QuestionResponseDataImpl) then) =
      __$$QuestionResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'question') QuestionData question});

  @override
  $QuestionDataCopyWith<$Res> get question;
}

/// @nodoc
class __$$QuestionResponseDataImplCopyWithImpl<$Res>
    extends _$QuestionResponseDataCopyWithImpl<$Res, _$QuestionResponseDataImpl>
    implements _$$QuestionResponseDataImplCopyWith<$Res> {
  __$$QuestionResponseDataImplCopyWithImpl(_$QuestionResponseDataImpl _value,
      $Res Function(_$QuestionResponseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
  }) {
    return _then(_$QuestionResponseDataImpl(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as QuestionData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionResponseDataImpl implements _QuestionResponseData {
  const _$QuestionResponseDataImpl(
      {@JsonKey(name: 'question') required this.question});

  factory _$QuestionResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'question')
  final QuestionData question;

  @override
  String toString() {
    return 'QuestionResponseData(question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionResponseDataImpl &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, question);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionResponseDataImplCopyWith<_$QuestionResponseDataImpl>
      get copyWith =>
          __$$QuestionResponseDataImplCopyWithImpl<_$QuestionResponseDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionResponseDataImplToJson(
      this,
    );
  }
}

abstract class _QuestionResponseData implements QuestionResponseData {
  const factory _QuestionResponseData(
          {@JsonKey(name: 'question') required final QuestionData question}) =
      _$QuestionResponseDataImpl;

  factory _QuestionResponseData.fromJson(Map<String, dynamic> json) =
      _$QuestionResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'question')
  QuestionData get question;
  @override
  @JsonKey(ignore: true)
  _$$QuestionResponseDataImplCopyWith<_$QuestionResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
