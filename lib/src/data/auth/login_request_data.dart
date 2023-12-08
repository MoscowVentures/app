import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request_data.freezed.dart';
part 'login_request_data.g.dart';

@freezed
class LoginRequestData with _$LoginRequestData {
  const factory LoginRequestData({
    @JsonKey(name: 'phone') required String phone,
  }) = _LoginRequestData;

  factory LoginRequestData.fromJson(Map<String, Object?> json) =>
      _$LoginRequestDataFromJson(json);
}
