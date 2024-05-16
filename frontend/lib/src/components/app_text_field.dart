import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_utils/colors.dart';

class AppTextField extends StatelessWidget {
  final String? hintText;
  final Icon? prefixIcon;
  final TextEditingController controller;
  final TextInputType inputType;
  final bool obscure;
  final bool? readOnly;
  final TextCapitalization capitalization;
  final TextInputAction? action;
  final int? maxLength;
  final String? lableText;
  final TextDirection textDirection;
  final String? deviceType;

  final Widget? suffix;
  final String? Function(String?)? validator;
  const AppTextField({
    super.key,
    this.hintText,
    this.prefixIcon,
    required this.controller,
    required this.inputType,
    this.obscure = false,
    this.action,
    this.suffix,
    this.maxLength,
    this.capitalization = TextCapitalization.none,
    this.readOnly = false,
    this.validator,
    this.textDirection = TextDirection.rtl,
    this.lableText,
   this. deviceType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly!,
      textCapitalization: capitalization,
      validator: validator,
      controller: controller,
      style: const TextStyle(
        fontSize: 14,
      ),
      maxLength: maxLength,
      obscureText: obscure,
      textInputAction: action,
      keyboardType: inputType,
      textAlignVertical: TextAlignVertical.top,
      decoration: InputDecoration(
        filled: false,
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: suffix,
        ),
        hintText: hintText,
        labelText: lableText,
        labelStyle: const TextStyle(color: AppColors.primary),
        prefixIcon: prefixIcon,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 2),
          borderRadius: deviceType == "mobile"? BorderRadius.circular(30) : BorderRadius.circular(20.sp),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 2),
          borderRadius: deviceType == "mobile"? BorderRadius.circular(30) : BorderRadius.circular(20.sp),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 2),
          borderRadius: deviceType == "mobile"? BorderRadius.circular(30) : BorderRadius.circular(20.sp),
        ),
        isDense: false,
        hintStyle: const TextStyle(fontSize: 14, color: Colors.black38),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 20,
        ),
      ),
    );
  }
}
