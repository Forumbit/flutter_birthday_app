import 'package:birthday_app/common/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.buttonColor,
  });

  final String text;
  final VoidCallback? onPressed;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(vertical: 13.5.h),
        ),
        overlayColor: MaterialStateProperty.all(Colors.grey),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(buttonColor),
        foregroundColor: MaterialStateProperty.all(Colors.white),
      ),
      child: Text(
        text,
        style: AppTextStyles.buttonTextStyle,
      ),
    );
  }
}
