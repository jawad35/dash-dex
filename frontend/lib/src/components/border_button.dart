import 'package:flutter/material.dart';

import '../app_utils/colors.dart';

class BorderButton extends StatefulWidget {
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

   BorderButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.width,
    this.radius = 30,
    this.color = AppColors.primary,
    this.textColor = Colors.black,
    this.fontWeight = FontWeight.normal,
    this.icon,
    this.space = 0,
    this.textSize,
    this.alignment = MainAxisAlignment.center,
    this.height = 55.0,
  }) : super(key: key);

  @override
  State<BorderButton> createState() => _BorderButtonState();
}

class _BorderButtonState extends State<BorderButton> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: widget.onPressed,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onHover: (val) {
          setState(() {
            hover = true;
          });
        },

        onExit: (val){
         setState(() {
           hover = false;
         });
        },
        child: Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            color: hover ? AppColors.primary : Colors.white,
            borderRadius: BorderRadius.circular(widget.radius),
            border: Border.all(
              color: widget.color,
              width: 2,
            ),
          ),
          child: Row(
            mainAxisAlignment: widget.alignment,
            children: [
              widget.icon ?? const SizedBox(),
              SizedBox(
                width: widget.space,
              ),
              Text(
                widget.text,
                style: TextStyle(
                  fontSize: widget.textSize,
                  color: hover ? Colors.white : widget.textColor,
                  fontWeight: widget.fontWeight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
