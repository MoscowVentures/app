import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../utils/extensions.dart';

class AppInput extends StatelessWidget {
  const AppInput({
    this.onChanged,
    this.inputFormatters,
    this.keyboardType,
    this.hint,
    super.key,
  });

  final List<TextInputFormatter>? inputFormatters;
  final void Function(String)? onChanged;
  final TextInputType? keyboardType;
  final String? hint;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 50,
        child: TextField(
          expands: true,
          maxLines: null,
          cursorColor: context.colors.mainAccent,
          onChanged: onChanged,
          style: context.text.bodyMedium,
          inputFormatters: inputFormatters,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            filled: true,
            fillColor: context.colors.mainBackground,
            contentPadding: const EdgeInsets.symmetric(horizontal: 25),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(color: context.colors.mainAccent),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide.none,
            ),
            hintStyle: context.text.bodyMedium!.copyWith(
              color: context.colors.mainText,
            ),
            hintText: hint,
          ),
        ),
      );
}
