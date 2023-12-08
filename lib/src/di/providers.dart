import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../api/auth_api.dart';
import '../domain/controllers/auth_controller.dart';

final secureStorageProvider = Provider(
  (ref) => const FlutterSecureStorage(),
);

final authControllerProvider = Provider(
  (ref) => AuthController(
    ref.watch(secureStorageProvider),
    ref.watch(authApiProvider),
  ),
);

final dioProvider = Provider(
  (ref) => Dio(),
);

final authApiProvider = Provider(
  (ref) => AuthApi(
    ref.watch(dioProvider),
  ),
);
