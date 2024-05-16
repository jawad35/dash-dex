import 'package:flutter/material.dart';

import '../app_utils/colors.dart';

class AppButton extends StatelessWidget {
  final double? width;
  final double? height;
  final double radius;
  final Color color;
  final Color? textColor;
  final VoidCallback? onPressed;
  final String text;
  final Widget? icon;
  final double? textSize;
  final double space;
  final FontWeight fontWeight;

  final MainAxisAlignment alignment;

  const AppButton(
      {Key? key,
      required this.onPressed,
      required this.text,
      this.width,
      this.radius = 30,
      this.color = AppColors.primary,
      this.textColor = Colors.white,
      this.fontWeight = FontWeight.normal,
      this.icon,
      this.space = 0,
      this.textSize,
      this.alignment = MainAxisAlignment.center,
      this.height = 55.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius)),
        ),
        child: Row(
          mainAxisAlignment: alignment,
          children: [
            icon ?? const SizedBox(),
            SizedBox(
              width: space,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: textSize,
                color: textColor,
                fontWeight: fontWeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
