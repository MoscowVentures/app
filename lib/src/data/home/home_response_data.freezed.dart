// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeResponseData _$HomeResponseDataFromJson(Map<String, dynamic> json) {
  return _HomeResponseData.fromJson(json);
}

/// @nodoc
mixin _$HomeResponseData {
  @JsonKey(name: 'themes')
  List<TopicResponseData> get topics => throw _privateConstructorUsedError;
  @JsonKey(name: 'stories')
  List<StoryResponseData> get stories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeResponseDataCopyWith<HomeResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeResponseDataCopyWith<$Res> {
  factory $HomeResponseDataCopyWith(
          HomeResponseData value, $Res Function(HomeResponseData) then) =
      _$HomeResponseDataCopyWithImpl<$Res, HomeResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'themes') List<TopicResponseData> topics,
      @JsonKey(name: 'stories') List<StoryResponseData> stories});
}

/// @nodoc
class _$HomeResponseDataCopyWithImpl<$Res, $Val extends HomeResponseData>
    implements $HomeResponseDataCopyWith<$Res> {
  _$HomeResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topics = null,
    Object? stories = null,
  }) {
    return _then(_value.copyWith(
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<TopicResponseData>,
      stories: null == stories
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<StoryResponseData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeResponseDataImplCopyWith<$Res>
    implements $HomeResponseDataCopyWith<$Res> {
  factory _$$HomeResponseDataImplCopyWith(_$HomeResponseDataImpl value,
          $Res Function(_$HomeResponseDataImpl) then) =
      __$$HomeResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'themes') List<TopicResponseData> topics,
      @JsonKey(name: 'stories') List<StoryResponseData> stories});
}

/// @nodoc
class __$$HomeResponseDataImplCopyWithImpl<$Res>
    extends _$HomeResponseDataCopyWithImpl<$Res, _$HomeResponseDataImpl>
    implements _$$HomeResponseDataImplCopyWith<$Res> {
  __$$HomeResponseDataImplCopyWithImpl(_$HomeResponseDataImpl _value,
      $Res Function(_$HomeResponseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topics = null,
    Object? stories = null,
  }) {
    return _then(_$HomeResponseDataImpl(
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<TopicResponseData>,
      stories: null == stories
          ? _value._stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<StoryResponseData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeResponseDataImpl implements _HomeResponseData {
  const _$HomeResponseDataImpl(
      {@JsonKey(name: 'themes') required final List<TopicResponseData> topics,
      @JsonKey(name: 'stories') required final List<StoryResponseData> stories})
      : _topics = topics,
        _stories = stories;

  factory _$HomeResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeResponseDataImplFromJson(json);

  final List<TopicResponseData> _topics;
  @override
  @JsonKey(name: 'themes')
  List<TopicResponseData> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  final List<StoryResponseData> _stories;
  @override
  @JsonKey(name: 'stories')
  List<StoryResponseData> get stories {
    if (_stories is EqualUnmodifiableListView) return _stories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stories);
  }

  @override
  String toString() {
    return 'HomeResponseData(topics: $topics, stories: $stories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeResponseDataImpl &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            const DeepCollectionEquality().equals(other._stories, _stories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_topics),
      const DeepCollectionEquality().hash(_stories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeResponseDataImplCopyWith<_$HomeResponseDataImpl> get copyWith =>
      __$$HomeResponseDataImplCopyWithImpl<_$HomeResponseDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeResponseDataImplToJson(
      this,
    );
  }
}

abstract class _HomeResponseData implements HomeResponseData {
  const factory _HomeResponseData(
      {@JsonKey(name: 'themes') required final List<TopicResponseData> topics,
      @JsonKey(name: 'stories')
      required final List<StoryResponseData> stories}) = _$HomeResponseDataImpl;

  factory _HomeResponseData.fromJson(Map<String, dynamic> json) =
      _$HomeResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'themes')
  List<TopicResponseData> get topics;
  @override
  @JsonKey(name: 'stories')
  List<StoryResponseData> get stories;
  @override
  @JsonKey(ignore: true)
  _$$HomeResponseDataImplCopyWith<_$HomeResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
