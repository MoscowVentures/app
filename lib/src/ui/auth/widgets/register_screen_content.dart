import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../utils/extensions.dart';
import '../../common/widgets/app_button.dart';
import '../../common/widgets/app_input.dart';

class RegisterScreenContent extends StatefulWidget {
  const RegisterScreenContent({
    required this.onRegisterPressed,
    required this.onLoginPressed,
    super.key,
  });

  final void Function(String phone, String name, String age) onRegisterPressed;
  final VoidCallback onLoginPressed;

  @override
  State<RegisterScreenContent> createState() => _RegisterScreenContentState();
}

class _RegisterScreenContentState extends State<RegisterScreenContent> {
  String _phone = '';
  String _name = '';
  String _age = '';

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
              context.strings.registerTitle,
              style: context.text.headlineSmall,
            ),
            const SizedBox(height: 20),
            AppInput(
              onChanged: (name) => _name = name,
              keyboardType: TextInputType.name,
              hint: context.strings.nameInputTitle,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[a-zA-ZА-Яа-я]')),
                LengthLimitingTextInputFormatter(16),
              ],
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
            AppInput(
              onChanged: (age) => _age = age,
              keyboardType: TextInputType.number,
              hint: context.strings.ageInputTitle,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                LengthLimitingTextInputFormatter(2),
              ],
            ),
            const SizedBox(height: 20),
            AppButton.filled(
              onTap: () => widget.onRegisterPressed.call(_phone, _name, _age),
              title: context.strings.registerButtonTitle,
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  context.strings.haveAccount,
                  style: context.text.bodyMedium,
                ),
              ),
            ),
            const SizedBox(height: 10),
            AppButton.outline(
              title: context.strings.loginButtonTitle,
              onTap: widget.onLoginPressed,
            ),
            const SizedBox(height: 20),
          ],
        ),
      );
}
