import 'package:birthday_app/common/navigation/navigation_route_names.dart';
import 'package:birthday_app/common/navigation/not_found_page.dart';
import 'package:birthday_app/main.dart';
import 'package:flutter/material.dart';

abstract class ScreenFactory {
  Widget makeHome();
  Widget makeGuestsList();
  Widget makeWishlist();
  Widget makeMenuDetail(int id);
}

class MyAppNavigationImpl implements MyAppNavigation {
  final ScreenFactory screenFactory;

  MyAppNavigationImpl(this.screenFactory);

  @override
  Map<String, Widget Function(BuildContext context)> get routes => {
        NavigationRouteNames.home: (context) => screenFactory.makeHome(),
        NavigationRouteNames.guestsList: (context) =>
            screenFactory.makeGuestsList(),
        NavigationRouteNames.wishlist: (context) => screenFactory.makeWishlist(),
      };

  @override
  Route<Object> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case NavigationRouteNames.menuDetail:
        final arguments = settings.arguments;
        final menuId = arguments is int ? arguments : 0;
        return MaterialPageRoute(
          builder: (BuildContext context) =>
              screenFactory.makeMenuDetail(menuId),
        );
      default:
        return MaterialPageRoute(
          builder: (BuildContext context) => const NotFoundWidget(),
        );
    }
  }
}
