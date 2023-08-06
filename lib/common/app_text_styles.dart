import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppTextStyles {
  static final buttonTextStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
    height: 23.12.h / 16.sp,
  );

  static final appBarTitleStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 20.sp,
    height: 20.h / 20.sp,
  );

  static final titleStyle = TextStyle(
    fontFamily: 'Yeseva One',
    fontSize: 24.sp,
  );

  static final subTitleStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
  );

  static final contentStyle = TextStyle(
    fontSize: 14.sp,
  );

  static final subContentStyle = TextStyle(
    fontSize: 12.sp,
  );

  static final textInputLabelStyle = TextStyle(
    fontSize: 16.sp,
  );

  static final textInputContentStyle = TextStyle(
    decoration: TextDecoration.none,
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
  );

  static final carouselTitleStyle = TextStyle(
    color: Colors.white,
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
  );
}
