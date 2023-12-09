import 'package:flutter/material.dart';

import '../../../utils/extensions.dart';

class AppButton extends StatelessWidget {
  const AppButton._({
    required this.title,
    required this.onTap,
    required this.isOutline,
    required this.enabled,
    super.key,
  });

  factory AppButton.filled({
    required String title,
    required VoidCallback onTap,
    bool enabled = true,
    Key? key,
  }) =>
      AppButton._(
        isOutline: false,
        title: title,
        onTap: onTap,
        enabled: enabled,
        key: key,
      );

  factory AppButton.outline({
    required String title,
    required VoidCallback onTap,
    bool enabled = true,
    Key? key,
  }) =>
      AppButton._(
        isOutline: true,
        title: title,
        onTap: onTap,
        enabled: enabled,
        key: key,
      );

  final String title;
  final VoidCallback onTap;
  final bool isOutline;
  final bool enabled;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 50,
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
                side: BorderSide(
                  color: enabled
                      ? context.colors.mainAccent
                      : context.colors.transparent,
                  width: 1.0,
                ),
              ),
            ),
            // overlayColor: MaterialStateProperty.all<Color>(
            //   context.colors.transparent,
            // ),
            backgroundColor: MaterialStateProperty.all<Color>(
              isOutline
                  ? context.colors.mainPrimary
                  : enabled
                      ? context.colors.mainAccent
                      : context.colors.mainAccent.withOpacity(0.3),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(
              context.colors.mainPrimary,
            ),
          ),
          onPressed: enabled ? onTap : null,
          child: Text(
            title,
            style: context.text.titleSmall!.copyWith(
              color: isOutline
                  ? context.colors.mainText
                  : context.colors.mainPrimary,
            ),
          ),
        ),
      );
}
