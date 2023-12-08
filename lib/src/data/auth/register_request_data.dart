import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_request_data.freezed.dart';
part 'register_request_data.g.dart';

@freezed
class RegisterRequestData with _$RegisterRequestData {
  const factory RegisterRequestData({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'phone') required String phone,
    @JsonKey(name: 'age') required int age,
  }) = _RegisterRequestData;

  factory RegisterRequestData.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestDataFromJson(json);
}
