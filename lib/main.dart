import 'package:birthday_app/common/app_theme/app_themes.dart';
import 'package:birthday_app/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

void main() {
  AndroidYandexMap.useAndroidViewSurface = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          theme: AppTheme.light,
          home: const HomePage(),
        );
      },
      designSize: const Size(375, 812),
    );
  }
}
