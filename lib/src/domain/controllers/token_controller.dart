import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../utils/logger.dart';
import '../app_keys.dart';

class TokenController {
  TokenController(this._secureStorage);

  final FlutterSecureStorage _secureStorage;

  String? _token;

  Future<bool> init() async {
    _token = await _secureStorage.read(key: AppKeys.token);
    return isAuthentificated;
  }

  Future<void> setToken(String token) async {
    logger.d('Set token: $token');
    _token = token;
    await _secureStorage.write(
      key: AppKeys.token,
      value: token,
    );
  }

  void clearToken() {
    _token = null;
    _secureStorage.delete(key: AppKeys.token);
  }

  String? get token {
    logger.d('token: $_token');
    return _token;
  }

  bool get isAuthentificated => _token != null;
}
