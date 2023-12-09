import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../api/auth_api.dart';
import '../api/home_api.dart';
import '../api/polls_api.dart';
import '../api/voice_chat_api.dart';
import '../data/home/home_state.dart';
import '../data/polls/polls_state.dart';
import '../data/voice_chat/voice_chat_state.dart';
import '../domain/controllers/auth_controller.dart';
import '../domain/controllers/home_controller.dart';
import '../domain/controllers/polls_controller.dart';
import '../domain/controllers/token_controller.dart';
import '../domain/controllers/voice_chat_controller.dart';

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

final homeApiProvider = Provider.autoDispose(
  (ref) => HomeApi(
    ref.watch(dioProvider),
  ),
);

final homeControllerProvider =
    StateNotifierProvider.autoDispose<HomeController, HomeState>(
  (ref) => HomeController(
    ref.watch(homeApiProvider),
  ),
);

final voiceChatApiProvider = Provider.autoDispose(
  (ref) => VoiceChatApi(
    ref.watch(dioProvider),
  ),
);

final pollsApiProvider = Provider.autoDispose(
  (ref) => PollsApi(
    ref.watch(dioProvider),
  ),
);

final pollsControllerProvider =
    StateNotifierProvider.autoDispose<PollsController, PollsState>(
  (ref) => PollsController(
    ref.watch(pollsApiProvider),
  ),
);

final voiceChatControllerProvider =
    StateNotifierProvider.autoDispose<VoiceChatController, VoiceChatState>(
  (ref) => VoiceChatController(
    ref.watch(voiceChatApiProvider),
  ),
);

final dioProvider = Provider(
  (ref) {
    final tokenController = ref.read(tokenControllerProvider);
    return Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 60),
      ),
    )..interceptors.add(
        InterceptorsWrapper(
          onRequest: (response, handler) {
            final token = tokenController.token;
            if (token == null) return handler.next(response);

            handler.next(
              response
                ..headers.addAll(
                  {'Authorization': token, 'Content-Type': 'application/json'},
                ),
            );
          },
          onError: (error, handler) {
            if (error.response?.statusCode == 401) {
              tokenController.clearToken();
            }
            handler.next(error);
          },
        ),
      );
  },
);

final authApiProvider = Provider(
  (ref) => AuthApi(
    ref.watch(dioProvider),
  ),
);
