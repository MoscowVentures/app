import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_response_data.freezed.dart';
part 'confirm_response_data.g.dart';

@freezed
class ConfirmResponseData with _$ConfirmResponseData {
  const factory ConfirmResponseData({
    @JsonKey(name: 'token') required String token,
  }) = _ConfirmResponseData;

  factory ConfirmResponseData.fromJson(Map<String, dynamic> json) =>
      _$ConfirmResponseDataFromJson(json);
}
