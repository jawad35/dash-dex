import 'package:dash_money/src/app_utils/colors.dart';
import 'package:flutter/material.dart';

class DropDownWidget<T> extends StatelessWidget {
  final T selectedValue;
  final List dropDownList;
  final ValueChanged onChanged;
  final String? hintText;
  final Alignment hintAlignment;

  const DropDownWidget({
    super.key,
    required this.dropDownList,
    required this.selectedValue,
    required this.onChanged,
    this.hintText,
    this.hintAlignment = Alignment.centerLeft,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: DropdownButtonFormField(
        style: const TextStyle(
          fontSize: 14,
          color: AppColors.greyText,
        ),
        alignment: AlignmentDirectional.center,
        hint: Align(
          alignment: hintAlignment,
          child: Text(
            hintText ?? "",
            style: const TextStyle(
              fontSize: 14,
              color: AppColors.greyText,
            ),
          ),
        ),
        icon: const Icon(
          Icons.arrow_drop_down,
          size: 30,
          color: AppColors.greyText,
        ),
        validator: (value) {
          if (value == null) {
            return "";
          }
          return null;
        },
        menuMaxHeight: 400,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.greyFilled.withOpacity(0.4),
          border: InputBorder.none,
          isDense: true,
          hintText: "Select",
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        ),
        isDense: false,
        isExpanded: true,
        value: selectedValue,
        items: dropDownList.map((a) {
          return DropdownMenuItem(
            value: a,
            child: FittedBox(
              child: Text(
                a.toString(),
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: AppColors.greyText,
                  fontFamily: "Montserrat",
                ),
              ),
            ),
          );
        }).toList(),
        onChanged: (val) => onChanged(val),
      ),
    );
  }
}
