import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppTextInput extends HookConsumerWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;
  final bool readOnly;
  final bool enable;
  final VoidCallback? onSuffixIconPressed;
  final FormFieldValidator<String>? validator;
  final Function(String)? onChanged;

  const AppTextInput({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    required this.keyboardType,
    required this.prefixIcon,
    this.suffixIcon,
    required this.obscureText,
    required this.readOnly,
    required this.enable,
    this.onSuffixIconPressed,
    this.validator,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixIcon: Icon(prefixIcon),
        suffixIcon: onSuffixIconPressed != null
            ? IconButton(onPressed: onSuffixIconPressed, icon: Icon(suffixIcon))
            : null,
        enabled: enable,
        isDense: true,
      ),
      readOnly: readOnly,
      validator: validator,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: onChanged,
    );
  }
}
