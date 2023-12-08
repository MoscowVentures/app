// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topic_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopicResponseData _$TopicResponseDataFromJson(Map<String, dynamic> json) {
  return _TopicResponseData.fromJson(json);
}

/// @nodoc
mixin _$TopicResponseData {
  @JsonKey(name: 'title')
  String get topics => throw _privateConstructorUsedError;
  @JsonKey(name: 'uuid')
  String get uuid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicResponseDataCopyWith<TopicResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicResponseDataCopyWith<$Res> {
  factory $TopicResponseDataCopyWith(
          TopicResponseData value, $Res Function(TopicResponseData) then) =
      _$TopicResponseDataCopyWithImpl<$Res, TopicResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String topics,
      @JsonKey(name: 'uuid') String uuid});
}

/// @nodoc
class _$TopicResponseDataCopyWithImpl<$Res, $Val extends TopicResponseData>
    implements $TopicResponseDataCopyWith<$Res> {
  _$TopicResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topics = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopicResponseDataImplCopyWith<$Res>
    implements $TopicResponseDataCopyWith<$Res> {
  factory _$$TopicResponseDataImplCopyWith(_$TopicResponseDataImpl value,
          $Res Function(_$TopicResponseDataImpl) then) =
      __$$TopicResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String topics,
      @JsonKey(name: 'uuid') String uuid});
}

/// @nodoc
class __$$TopicResponseDataImplCopyWithImpl<$Res>
    extends _$TopicResponseDataCopyWithImpl<$Res, _$TopicResponseDataImpl>
    implements _$$TopicResponseDataImplCopyWith<$Res> {
  __$$TopicResponseDataImplCopyWithImpl(_$TopicResponseDataImpl _value,
      $Res Function(_$TopicResponseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topics = null,
    Object? uuid = null,
  }) {
    return _then(_$TopicResponseDataImpl(
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
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
class _$TopicResponseDataImpl implements _TopicResponseData {
  const _$TopicResponseDataImpl(
      {@JsonKey(name: 'title') required this.topics,
      @JsonKey(name: 'uuid') required this.uuid});

  factory _$TopicResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopicResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String topics;
  @override
  @JsonKey(name: 'uuid')
  final String uuid;

  @override
  String toString() {
    return 'TopicResponseData(topics: $topics, uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicResponseDataImpl &&
            (identical(other.topics, topics) || other.topics == topics) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, topics, uuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopicResponseDataImplCopyWith<_$TopicResponseDataImpl> get copyWith =>
      __$$TopicResponseDataImplCopyWithImpl<_$TopicResponseDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopicResponseDataImplToJson(
      this,
    );
  }
}

abstract class _TopicResponseData implements TopicResponseData {
  const factory _TopicResponseData(
          {@JsonKey(name: 'title') required final String topics,
          @JsonKey(name: 'uuid') required final String uuid}) =
      _$TopicResponseDataImpl;

  factory _TopicResponseData.fromJson(Map<String, dynamic> json) =
      _$TopicResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String get topics;
  @override
  @JsonKey(name: 'uuid')
  String get uuid;
  @override
  @JsonKey(ignore: true)
  _$$TopicResponseDataImplCopyWith<_$TopicResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
