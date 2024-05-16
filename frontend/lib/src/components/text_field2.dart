import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_utils/colors.dart';

class SecondaryTextField extends StatelessWidget {
  final String? hintText;
  final Icon? prefixIcon;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final bool obscure;
  final bool? readOnly;
  final String? suffixText;
  final TextCapitalization capitalization;
  final TextInputAction? action;
  final int? maxLength;
  final String? lableText;
  final TextDirection textDirection;
  final TextAlign textAlignment;
  final bool? dense;
  final Widget? suffix;
  final String? Function(String?)? validator;
  final EdgeInsetsGeometry? contentPadding;
  const SecondaryTextField({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.controller,
    this.inputType,
    this.obscure = false,
    this.action,
    this.suffix,
    this.maxLength,
    this.capitalization = TextCapitalization.none,
    this.readOnly = false,
    this.validator,
    this.textDirection = TextDirection.rtl,
    this.lableText,
    this.suffixText,
    this.dense = false,
    this.textAlignment = TextAlign.start,
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: SizedBox(
        height: 35,
        child: TextFormField(
          readOnly: readOnly!,
          textCapitalization: capitalization,
          validator: validator,
          controller: controller,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          maxLength: maxLength,
          obscureText: obscure,
          textInputAction: action,
          keyboardType: inputType,
          textAlign: textAlignment!,
          textAlignVertical: TextAlignVertical.top,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(
                bottom: 13, left: textAlignment == TextAlign.center ? 0 : 9.w),
            hintText: hintText,
            filled: true,
            isDense: dense,
            hintStyle: const TextStyle(
              color: AppColors.greyFilled,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
            fillColor: AppColors.filledColor,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
