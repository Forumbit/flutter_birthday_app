import 'package:birthday_app/common/app_colors.dart';
import 'package:birthday_app/common/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextInputField extends StatelessWidget {
  const CustomTextInputField({
    super.key,
    required this.labelText,
    required this.controller
  });

  final String labelText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: AppTextStyles.textInputContentStyle,
      cursorColor: AppColors.secondaryItemColor,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(
          color: AppColors.secondaryItemColor,
        ),
        fillColor: AppColors.inputBackgroundColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(4.r),
        ),
      ),
    );
  }
}
