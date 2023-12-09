import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../app_keys.dart';

class TokenController {
  TokenController(this._secureStorage);

  final FlutterSecureStorage _secureStorage;

  String? _token;

  Future<bool> init() async {
    _token = await _secureStorage.read(key: AppKeys.token);
    return isAuthentificated;
  }

  void setToken(String token) {
    _token = token;
    _secureStorage.write(
      key: AppKeys.token,
      value: token,
    );
  }

  String? get token => _token;

  bool get isAuthentificated => _token != null;
}
