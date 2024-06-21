import 'package:flutter/material.dart';

// import '../../../data/constants/colors.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    required this.hint,
    this.action = TextInputAction.next,
    this.controller,
    this.errorText,
    this.initialValue = '',
    this.keyboard,
    this.maxLines = 1,
    this.obscureText = false,
    this.onChanged,
    this.prefix,
    this.suffix,
    this.isFilled,
    this.fillColor,
    this.border,
    this.onSubmitted,
    this.onEditingComplete,
    this.prefixIconConstraints,
    this.validator,
    super.key,
  });

  final bool obscureText;
  final int maxLines;
  final String initialValue;
  final String hint;
  final String? errorText;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final TextInputAction action;
  final TextInputType? keyboard;
  final TextEditingController? controller;
  final Widget? prefix;
  final Widget? suffix;
  final bool? isFilled;
  final Color? fillColor;
  final InputBorder? border;
  final BoxConstraints? prefixIconConstraints;
  final String? Function(String?)? validator;
  final Function()? onEditingComplete;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        errorText: errorText,
        hintText: hint,
        // hintStyle: AppStyles.h6,
        prefixIcon: prefix,
        suffixIcon: suffix,
        border: border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(2),
              // borderSide: const BorderSide(color: AppColors.primary),
            ),
        prefixIconConstraints: prefixIconConstraints,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            // color: AppColors.primary,
            width: 1.5,
          ),
        ),
        filled: isFilled,
        fillColor: fillColor,
      ),
      initialValue: controller == null ? initialValue : null,
      keyboardType: keyboard,
      maxLines: maxLines,
      obscureText: obscureText,
      onChanged: onChanged,
      // style: AppStyles.h6.copyWith(color: AppColors.grey3),
      textInputAction: action,
      onEditingComplete: onEditingComplete,
      onFieldSubmitted: onSubmitted,
    );
  }
}
