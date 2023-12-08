import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../utils/extensions.dart';
import '../../common/widgets/app_button.dart';
import '../../common/widgets/app_input.dart';

class LoginScreenContent extends StatefulWidget {
  const LoginScreenContent({
    required this.onRegisterPressed,
    required this.onLoginPressed,
    super.key,
  });

  final void Function(String phone) onLoginPressed;
  final VoidCallback onRegisterPressed;

  @override
  State<LoginScreenContent> createState() => _LoginScreenContentState();
}

class _LoginScreenContentState extends State<LoginScreenContent> {
  String _phone = '';

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40.0,
          vertical: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              context.strings.loginTitle,
              style: context.text.headlineSmall,
            ),
            const SizedBox(height: 20),
            AppInput(
              onChanged: (phone) => _phone = phone,
              keyboardType: TextInputType.phone,
              hint: context.strings.phoneInputTitle,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[0-9-()]')),
                LengthLimitingTextInputFormatter(12),
              ],
            ),
            const SizedBox(height: 20),
            AppButton.filled(
              onTap: () => widget.onLoginPressed.call(_phone),
              title: context.strings.loginButtonTitle,
            ),
            const SizedBox(height: 10),
            AppButton.outline(
              title: context.strings.registerButtonTitle,
              onTap: widget.onRegisterPressed,
            ),
            const SizedBox(height: 20),
          ],
        ),
      );
}
