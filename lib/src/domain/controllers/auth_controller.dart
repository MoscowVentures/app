import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../api/auth_api.dart';
import '../../data/auth/confirm_request_data.dart';
import '../../data/auth/login_request_data.dart';
import '../../data/auth/register_request_data.dart';
import '../../utils/logger.dart';
import '../app_keys.dart';

class AuthController {
  AuthController(this._secureStorage, this._api);

  final FlutterSecureStorage _secureStorage;
  final AuthApi _api;

  Future<bool> isAuthentificated() async {
    final token = await _secureStorage.read(key: AppKeys.token);
    return token != null;
  }

  Future<void> setToken(String token) => _secureStorage.write(
        key: AppKeys.token,
        value: token,
      );

  Future<void> _request<T>({
    required T data,
    required Future<Response> Function() onRequest,
    required VoidCallback onLoading,
    required Future<void> Function(Response) onSuccess,
    required VoidCallback onError,
  }) async {
    try {
      onLoading.call();
      final response = await onRequest();
      logger.d('response: $response');
      if (response.statusCode == 200) {
        logger.d('Status 200: $data');
        await onSuccess.call(response);
        return;
      }
      logger.w('Unknown status');
    } on Object catch (e, s) {
      logger.e('Error: $e\n$s');
      onError.call();
    }
  }

  Future<void> register({
    required RegisterRequestData data,
    required VoidCallback onLoading,
    required Future<void> Function(Response) onSuccess,
    required VoidCallback onError,
  }) =>
      _request<RegisterRequestData>(
        data: data,
        onLoading: onLoading,
        onRequest: () => _api.register(data),
        onSuccess: onSuccess,
        onError: onError,
      );

  Future<void> login({
    required LoginRequestData data,
    required VoidCallback onLoading,
    required Future<void> Function(Response) onSuccess,
    required VoidCallback onError,
  }) =>
      _request<LoginRequestData>(
        data: data,
        onLoading: onLoading,
        onRequest: () => _api.login(data),
        onSuccess: onSuccess,
        onError: onError,
      );

  Future<void> confirm({
    required ConfirmRequestData data,
    required VoidCallback onLoading,
    required Future<void> Function(Response) onSuccess,
    required VoidCallback onError,
  }) =>
      _request<ConfirmRequestData>(
        data: data,
        onLoading: onLoading,
        onRequest: () => _api.confirm(data),
        onSuccess: onSuccess,
        onError: onError,
      );
}
