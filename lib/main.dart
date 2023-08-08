import 'package:birthday_app/common/navigation/navigation_route.dart';
import 'package:birthday_app/common/theme/app_themes.dart';
import 'package:birthday_app/di/di_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppFactory {
  Future<void> initializeApp();
  Widget makeApp();
}

void main() async {
  final appFactory = makeAppFactory();
  await appFactory.initializeApp();
  runApp(appFactory.makeApp());
}

abstract class MyAppNavigation {
  Map<String, Widget Function(BuildContext)> get routes;
  Route<Object> onGenerateRoute(RouteSettings settings);
}

class MyApp extends StatelessWidget {
  final MyAppNavigation myAppNavigation;
  final ScreenFactory screenFactory;
  const MyApp({
    super.key,
    required this.myAppNavigation,
    required this.screenFactory,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          restorationScopeId: 'app',
          theme: AppTheme.light,
          routes: myAppNavigation.routes,
          onGenerateRoute: myAppNavigation.onGenerateRoute,
        );
      },
      designSize: const Size(375, 812),
      splitScreenMode: true,
      minTextAdapt: true,
    );
  }
}
