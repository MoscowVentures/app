import 'package:flutter/material.dart';

import '../../../utils/extensions.dart';

class AppButton extends StatelessWidget {
  const AppButton._({
    required this.title,
    required this.onTap,
    required this.isOutline,
    super.key,
  });

  factory AppButton.filled({
    required String title,
    required VoidCallback onTap,
    Key? key,
  }) =>
      AppButton._(
        isOutline: false,
        title: title,
        onTap: onTap,
        key: key,
      );

  factory AppButton.outline({
    required String title,
    required VoidCallback onTap,
    Key? key,
  }) =>
      AppButton._(
        isOutline: true,
        title: title,
        onTap: onTap,
        key: key,
      );

  final String title;
  final VoidCallback onTap;
  final bool isOutline;

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
                  color: context.colors.mainAccent,
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
                  : context.colors.mainAccent,
            ),
            foregroundColor: MaterialStateProperty.all<Color>(
              context.colors.mainPrimary,
            ),
          ),
          onPressed: onTap,
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
