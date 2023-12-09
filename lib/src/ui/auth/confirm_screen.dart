import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/auth/confirm_args.dart';
import '../../data/auth/confirm_request_data.dart';
import '../../data/auth/confirm_response_data.dart';
import '../../data/auth/error_args.dart';
import '../../di/providers.dart';
import '../../domain/controllers/auth_controller.dart';
import '../../domain/controllers/token_controller.dart';
import '../../utils/extensions.dart';
import '../common/loading_screen.dart';
import '../common/widgets/circle_gradient_background.dart';
import 'widgets/confirm_screen_content.dart';

class ConfirmScreen extends ConsumerStatefulWidget {
  const ConfirmScreen({super.key});

  @override
  ConsumerState<ConfirmScreen> createState() => _ConfirmScreenState();
}

class _ConfirmScreenState extends ConsumerState<ConfirmScreen> {
  bool isLoading = false;

  Future<void> _confirm({
    required AuthController authController,
    required TokenController tokenController,
    required String phone,
    required String code,
    required bool isRetry,
  }) =>
      authController.confirm(
        data: ConfirmRequestData(code: code, phone: phone),
        onLoading: () => setState(() => isLoading = true),
        onSuccess: (response) async {
          final data = ConfirmResponseData.fromJson(response.data);
          await tokenController.setToken(data.token);

          setState(() => isLoading = false);
          context.toMainScreen();
        },
        onError: () {
          setState(() => isLoading = false);
          if (isRetry) return;
          context.toErrorScreen(
            ErrorArgs(
              onRetry: () => _confirm(
                authController: authController,
                tokenController: tokenController,
                phone: phone,
                code: code,
                isRetry: true,
              ),
            ),
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    final authController = ref.watch(authControllerProvider);
    final tokenController = ref.watch(tokenControllerProvider);

    final args = ModalRoute.of(context)?.settings.arguments as ConfirmArgs;

    return LoadingWrapper(
      isLoading: isLoading,
      child: Scaffold(
        backgroundColor: context.colors.mainBackground,
        body: const CircleGradientBackground(),
        resizeToAvoidBottomInset: true,
        bottomSheet: SingleChildScrollView(
          child: BottomSheet(
            enableDrag: false,
            onClosing: () {},
            clipBehavior: Clip.hardEdge,
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 2 / 3,
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            builder: (context) => ConfirmScreenContent(
              onSubmit: (code) => _confirm(
                authController: authController,
                tokenController: tokenController,
                phone: args.phone,
                code: code,
                isRetry: false,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
