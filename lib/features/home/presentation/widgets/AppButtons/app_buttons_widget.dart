import 'package:birthday_app/common/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppButtonStyle {
  static final baseStyle = ButtonStyle(
    padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 13.5.h)),
    overlayColor: MaterialStateProperty.all(Colors.white24),
    shape: MaterialStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r))),
    backgroundColor: MaterialStateProperty.all(AppColors.mainColor),
    foregroundColor: MaterialStateProperty.all(Colors.white),
  );
}

class AppButtonsWidget extends StatelessWidget {
  const AppButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 156.w,
          child: TextButton(
            onPressed: () {},
            style: AppButtonStyle.baseStyle,
            child: Text(
              'Список гостей',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 156.w,
          child: TextButton(
            onPressed: () {},
            style: AppButtonStyle.baseStyle,
            child: Text(
              'Вишлист',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
