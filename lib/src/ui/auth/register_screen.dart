import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/auth/confirm_args.dart';
import '../../data/auth/error_args.dart';
import '../../data/auth/register_request_data.dart';
import '../../di/providers.dart';
import '../../domain/controllers/auth_controller.dart';
import '../../utils/extensions.dart';
import '../common/loading_screen.dart';
import '../common/widgets/circle_gradient_background.dart';
import 'widgets/register_screen_content.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  bool isLoading = false;

  Future<void> _register(
    AuthController controller,
    String phone,
    String name,
    int age,
    bool isRetry,
  ) =>
      controller.register(
        data: RegisterRequestData(
          phone: phone,
          name: name,
          age: age,
        ),
        onLoading: () => setState(() => isLoading = true),
        onSuccess: (response) async {
          setState(() => isLoading = false);
          context.toConfirmScreen(
            ConfirmArgs(phone: phone),
          );
        },
        onError: () {
          setState(() => isLoading = false);
          if (isRetry) return;
          context.toErrorScreen(
            ErrorArgs(
              onRetry: () => _register(
                controller,
                phone,
                name,
                age,
                true,
              ),
            ),
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    final authController = ref.watch(authControllerProvider);

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
            builder: (context) => RegisterScreenContent(
              onRegisterPressed: (phone, name, age) => _register(
                authController,
                phone,
                name,
                int.parse(age),
                false,
              ),
              onLoginPressed: context.toLoginScreen,
            ),
          ),
        ),
      ),
    );
  }
}
