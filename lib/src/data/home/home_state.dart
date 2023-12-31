import 'package:freezed_annotation/freezed_annotation.dart';

import 'home_response_data.dart';

part 'home_state.freezed.dart';
part 'home_state.g.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    HomeResponseData? data,
    @Default(false) bool isLoading,
    @Default(false) bool isError,
  }) = _HomeState;

  factory HomeState.fromJson(Map<String, dynamic> json) =>
      _$HomeStateFromJson(json);
}
