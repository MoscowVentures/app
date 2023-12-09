// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_request_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionRequestData _$QuestionRequestDataFromJson(Map<String, dynamic> json) {
  return _QuestionRequestData.fromJson(json);
}

/// @nodoc
mixin _$QuestionRequestData {
  @JsonKey(name: 'themes')
  List<String> get topicsFilter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionRequestDataCopyWith<QuestionRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionRequestDataCopyWith<$Res> {
  factory $QuestionRequestDataCopyWith(
          QuestionRequestData value, $Res Function(QuestionRequestData) then) =
      _$QuestionRequestDataCopyWithImpl<$Res, QuestionRequestData>;
  @useResult
  $Res call({@JsonKey(name: 'themes') List<String> topicsFilter});
}

/// @nodoc
class _$QuestionRequestDataCopyWithImpl<$Res, $Val extends QuestionRequestData>
    implements $QuestionRequestDataCopyWith<$Res> {
  _$QuestionRequestDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topicsFilter = null,
  }) {
    return _then(_value.copyWith(
      topicsFilter: null == topicsFilter
          ? _value.topicsFilter
          : topicsFilter // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionRequestDataImplCopyWith<$Res>
    implements $QuestionRequestDataCopyWith<$Res> {
  factory _$$QuestionRequestDataImplCopyWith(_$QuestionRequestDataImpl value,
          $Res Function(_$QuestionRequestDataImpl) then) =
      __$$QuestionRequestDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'themes') List<String> topicsFilter});
}

/// @nodoc
class __$$QuestionRequestDataImplCopyWithImpl<$Res>
    extends _$QuestionRequestDataCopyWithImpl<$Res, _$QuestionRequestDataImpl>
    implements _$$QuestionRequestDataImplCopyWith<$Res> {
  __$$QuestionRequestDataImplCopyWithImpl(_$QuestionRequestDataImpl _value,
      $Res Function(_$QuestionRequestDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topicsFilter = null,
  }) {
    return _then(_$QuestionRequestDataImpl(
      topicsFilter: null == topicsFilter
          ? _value._topicsFilter
          : topicsFilter // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionRequestDataImpl implements _QuestionRequestData {
  const _$QuestionRequestDataImpl(
      {@JsonKey(name: 'themes') required final List<String> topicsFilter})
      : _topicsFilter = topicsFilter;

  factory _$QuestionRequestDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionRequestDataImplFromJson(json);

  final List<String> _topicsFilter;
  @override
  @JsonKey(name: 'themes')
  List<String> get topicsFilter {
    if (_topicsFilter is EqualUnmodifiableListView) return _topicsFilter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topicsFilter);
  }

  @override
  String toString() {
    return 'QuestionRequestData(topicsFilter: $topicsFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionRequestDataImpl &&
            const DeepCollectionEquality()
                .equals(other._topicsFilter, _topicsFilter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_topicsFilter));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionRequestDataImplCopyWith<_$QuestionRequestDataImpl> get copyWith =>
      __$$QuestionRequestDataImplCopyWithImpl<_$QuestionRequestDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionRequestDataImplToJson(
      this,
    );
  }
}

abstract class _QuestionRequestData implements QuestionRequestData {
  const factory _QuestionRequestData(
          {@JsonKey(name: 'themes') required final List<String> topicsFilter}) =
      _$QuestionRequestDataImpl;

  factory _QuestionRequestData.fromJson(Map<String, dynamic> json) =
      _$QuestionRequestDataImpl.fromJson;

  @override
  @JsonKey(name: 'themes')
  List<String> get topicsFilter;
  @override
  @JsonKey(ignore: true)
  _$$QuestionRequestDataImplCopyWith<_$QuestionRequestDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
