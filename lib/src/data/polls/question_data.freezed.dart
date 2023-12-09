// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionData _$QuestionDataFromJson(Map<String, dynamic> json) {
  return _QuestionData.fromJson(json);
}

/// @nodoc
mixin _$QuestionData {
  @JsonKey(name: 'answers')
  List<String> get answers => throw _privateConstructorUsedError;
  @JsonKey(name: 'theme')
  String get theme => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'uuid')
  String get uuid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionDataCopyWith<QuestionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionDataCopyWith<$Res> {
  factory $QuestionDataCopyWith(
          QuestionData value, $Res Function(QuestionData) then) =
      _$QuestionDataCopyWithImpl<$Res, QuestionData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'answers') List<String> answers,
      @JsonKey(name: 'theme') String theme,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'uuid') String uuid});
}

/// @nodoc
class _$QuestionDataCopyWithImpl<$Res, $Val extends QuestionData>
    implements $QuestionDataCopyWith<$Res> {
  _$QuestionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answers = null,
    Object? theme = null,
    Object? title = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionDataImplCopyWith<$Res>
    implements $QuestionDataCopyWith<$Res> {
  factory _$$QuestionDataImplCopyWith(
          _$QuestionDataImpl value, $Res Function(_$QuestionDataImpl) then) =
      __$$QuestionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'answers') List<String> answers,
      @JsonKey(name: 'theme') String theme,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'uuid') String uuid});
}

/// @nodoc
class __$$QuestionDataImplCopyWithImpl<$Res>
    extends _$QuestionDataCopyWithImpl<$Res, _$QuestionDataImpl>
    implements _$$QuestionDataImplCopyWith<$Res> {
  __$$QuestionDataImplCopyWithImpl(
      _$QuestionDataImpl _value, $Res Function(_$QuestionDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answers = null,
    Object? theme = null,
    Object? title = null,
    Object? uuid = null,
  }) {
    return _then(_$QuestionDataImpl(
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionDataImpl implements _QuestionData {
  const _$QuestionDataImpl(
      {@JsonKey(name: 'answers') required final List<String> answers,
      @JsonKey(name: 'theme') required this.theme,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'uuid') required this.uuid})
      : _answers = answers;

  factory _$QuestionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionDataImplFromJson(json);

  final List<String> _answers;
  @override
  @JsonKey(name: 'answers')
  List<String> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  @JsonKey(name: 'theme')
  final String theme;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'uuid')
  final String uuid;

  @override
  String toString() {
    return 'QuestionData(answers: $answers, theme: $theme, title: $title, uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionDataImpl &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_answers), theme, title, uuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionDataImplCopyWith<_$QuestionDataImpl> get copyWith =>
      __$$QuestionDataImplCopyWithImpl<_$QuestionDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionDataImplToJson(
      this,
    );
  }
}

abstract class _QuestionData implements QuestionData {
  const factory _QuestionData(
      {@JsonKey(name: 'answers') required final List<String> answers,
      @JsonKey(name: 'theme') required final String theme,
      @JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'uuid') required final String uuid}) = _$QuestionDataImpl;

  factory _QuestionData.fromJson(Map<String, dynamic> json) =
      _$QuestionDataImpl.fromJson;

  @override
  @JsonKey(name: 'answers')
  List<String> get answers;
  @override
  @JsonKey(name: 'theme')
  String get theme;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'uuid')
  String get uuid;
  @override
  @JsonKey(ignore: true)
  _$$QuestionDataImplCopyWith<_$QuestionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
