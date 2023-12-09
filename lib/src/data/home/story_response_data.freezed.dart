// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'story_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoryResponseData _$StoryResponseDataFromJson(Map<String, dynamic> json) {
  return _StoryResponseData.fromJson(json);
}

/// @nodoc
mixin _$StoryResponseData {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'text')
  String get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'align')
  HomeAlign get align => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoryResponseDataCopyWith<StoryResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryResponseDataCopyWith<$Res> {
  factory $StoryResponseDataCopyWith(
          StoryResponseData value, $Res Function(StoryResponseData) then) =
      _$StoryResponseDataCopyWithImpl<$Res, StoryResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'text') String text,
      @JsonKey(name: 'image_url') String url,
      @JsonKey(name: 'align') HomeAlign align});
}

/// @nodoc
class _$StoryResponseDataCopyWithImpl<$Res, $Val extends StoryResponseData>
    implements $StoryResponseDataCopyWith<$Res> {
  _$StoryResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? text = null,
    Object? url = null,
    Object? align = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      align: null == align
          ? _value.align
          : align // ignore: cast_nullable_to_non_nullable
              as HomeAlign,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoryResponseDataImplCopyWith<$Res>
    implements $StoryResponseDataCopyWith<$Res> {
  factory _$$StoryResponseDataImplCopyWith(_$StoryResponseDataImpl value,
          $Res Function(_$StoryResponseDataImpl) then) =
      __$$StoryResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'text') String text,
      @JsonKey(name: 'image_url') String url,
      @JsonKey(name: 'align') HomeAlign align});
}

/// @nodoc
class __$$StoryResponseDataImplCopyWithImpl<$Res>
    extends _$StoryResponseDataCopyWithImpl<$Res, _$StoryResponseDataImpl>
    implements _$$StoryResponseDataImplCopyWith<$Res> {
  __$$StoryResponseDataImplCopyWithImpl(_$StoryResponseDataImpl _value,
      $Res Function(_$StoryResponseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? text = null,
    Object? url = null,
    Object? align = null,
  }) {
    return _then(_$StoryResponseDataImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      align: null == align
          ? _value.align
          : align // ignore: cast_nullable_to_non_nullable
              as HomeAlign,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoryResponseDataImpl implements _StoryResponseData {
  const _$StoryResponseDataImpl(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'text') required this.text,
      @JsonKey(name: 'image_url') required this.url,
      @JsonKey(name: 'align') required this.align});

  factory _$StoryResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoryResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'text')
  final String text;
  @override
  @JsonKey(name: 'image_url')
  final String url;
  @override
  @JsonKey(name: 'align')
  final HomeAlign align;

  @override
  String toString() {
    return 'StoryResponseData(title: $title, text: $text, url: $url, align: $align)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoryResponseDataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.align, align) || other.align == align));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, text, url, align);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoryResponseDataImplCopyWith<_$StoryResponseDataImpl> get copyWith =>
      __$$StoryResponseDataImplCopyWithImpl<_$StoryResponseDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoryResponseDataImplToJson(
      this,
    );
  }
}

abstract class _StoryResponseData implements StoryResponseData {
  const factory _StoryResponseData(
          {@JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'text') required final String text,
          @JsonKey(name: 'image_url') required final String url,
          @JsonKey(name: 'align') required final HomeAlign align}) =
      _$StoryResponseDataImpl;

  factory _StoryResponseData.fromJson(Map<String, dynamic> json) =
      _$StoryResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'text')
  String get text;
  @override
  @JsonKey(name: 'image_url')
  String get url;
  @override
  @JsonKey(name: 'align')
  HomeAlign get align;
  @override
  @JsonKey(ignore: true)
  _$$StoryResponseDataImplCopyWith<_$StoryResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
