import 'package:dio/dio.dart';

import '../data/auth/confirm_request_data.dart';
import '../data/auth/login_request_data.dart';
import '../data/auth/register_request_data.dart';
import 'app_api_constants.dart';

class AuthApi {
  const AuthApi(this._dio);

  final Dio _dio;

  Future<Response> register(RegisterRequestData data) => _dio.post(
        AppApiConstants.login,
        data: data.toJson(),
      );

  Future<Response> login(LoginRequestData data) => _dio.post(
        AppApiConstants.login,
        data: data.toJson(),
      );

  Future<Response> confirm(ConfirmRequestData data) => _dio.get(
        AppApiConstants.confirm,
        data: data.toJson(),
      );
}
