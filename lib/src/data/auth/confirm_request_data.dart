import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_request_data.freezed.dart';
part 'confirm_request_data.g.dart';

@freezed
class ConfirmRequestData with _$ConfirmRequestData {
  const factory ConfirmRequestData({
    @JsonKey(name: 'phone') required String phone,
    @JsonKey(name: 'code') required String code,
  }) = _ConfirmRequestData;

  factory ConfirmRequestData.fromJson(Map<String, dynamic> json) =>
      _$ConfirmRequestDataFromJson(json);
}
