import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../utils/extensions.dart';
import '../../common/widgets/app_button.dart';

class ConfirmScreenContent extends StatefulWidget {
  const ConfirmScreenContent({
    required this.onSubmit,
    super.key,
  });

  final void Function(String) onSubmit;

  @override
  State<ConfirmScreenContent> createState() => _ConfirmScreenContentState();
}

class _ConfirmScreenContentState extends State<ConfirmScreenContent> {
  String _code = '';

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
              context.strings.confirmTitle,
              style: context.text.headlineSmall,
            ),
            const SizedBox(height: 20),
            Text(
              context.strings.confirmSubtitle,
              style: context.text.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 100,
              child: TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                cursorColor: context.colors.mainAccent,
                decoration: InputDecoration(
                  focusColor: context.colors.mainAccent,
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: context.colors.mainAccent,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: context.colors.mainAccent,
                      width: 1.0,
                    ),
                  ),
                ),
                onChanged: (code) => setState(() => _code = code),
                style: context.text.titleLarge,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                  LengthLimitingTextInputFormatter(4),
                ],
              ),
            ),
            const SizedBox(height: 20),
            AppButton.filled(
              title: context.strings.confirmButtonTitle,
              onTap: () => widget.onSubmit.call(_code),
            ),
            const SizedBox(height: 20),
          ],
        ),
      );
}
