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
  @JsonKey(name: 'uuid')
  String get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'text')
  String get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'uuid') String uuid,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'text') String text,
      @JsonKey(name: 'image_url') String imageUrl});
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
    Object? uuid = null,
    Object? title = null,
    Object? text = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'uuid') String uuid,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'text') String text,
      @JsonKey(name: 'image_url') String imageUrl});
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
    Object? uuid = null,
    Object? title = null,
    Object? text = null,
    Object? imageUrl = null,
  }) {
    return _then(_$TopicResponseDataImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopicResponseDataImpl implements _TopicResponseData {
  const _$TopicResponseDataImpl(
      {@JsonKey(name: 'uuid') required this.uuid,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'text') required this.text,
      @JsonKey(name: 'image_url') required this.imageUrl});

  factory _$TopicResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopicResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'uuid')
  final String uuid;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'text')
  final String text;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;

  @override
  String toString() {
    return 'TopicResponseData(uuid: $uuid, title: $title, text: $text, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicResponseDataImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, title, text, imageUrl);

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
          {@JsonKey(name: 'uuid') required final String uuid,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'text') required final String text,
          @JsonKey(name: 'image_url') required final String imageUrl}) =
      _$TopicResponseDataImpl;

  factory _TopicResponseData.fromJson(Map<String, dynamic> json) =
      _$TopicResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'uuid')
  String get uuid;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'text')
  String get text;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$TopicResponseDataImplCopyWith<_$TopicResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
