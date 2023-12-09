import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../api/auth_api.dart';
import '../api/home_api.dart';
import '../data/home/home_state.dart';
import '../domain/controllers/auth_controller.dart';
import '../domain/controllers/home_controller.dart';
import '../domain/controllers/token_controller.dart';

final secureStorageProvider = Provider(
  (ref) => const FlutterSecureStorage(),
);

final authControllerProvider = Provider(
  (ref) => AuthController(
    ref.watch(authApiProvider),
  ),
);

final tokenControllerProvider = Provider(
  (ref) => TokenController(
    ref.watch(secureStorageProvider),
  ),
);

final homeApirProvider = Provider.autoDispose(
  (ref) => HomeApi(
    ref.watch(dioProvider),
  ),
);

final homeControllerProvider =
    StateNotifierProvider.autoDispose<HomeController, HomeState>(
  (ref) => HomeController(
    ref.watch(homeApirProvider),
  ),
);

final dioProvider = Provider(
  (ref) => Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 15),
    ),
  )..interceptors.add(
      InterceptorsWrapper(
        onResponse: (response, handler) {
          final tokenController = ref.watch(tokenControllerProvider);
          final token = tokenController.token;

          if (token == null) return handler.next(response);

          handler.next(
            response
              ..headers.add(
                'Authorization',
                token,
              ),
          );
        },
      ),
    ),
);

final authApiProvider = Provider(
  (ref) => AuthApi(
    ref.watch(dioProvider),
  ),
);
