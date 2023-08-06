import 'package:birthday_app/bloc/guests_list/guest_list_bloc.dart';
import 'package:birthday_app/bloc/menu_detail/menu_detail_cubit.dart';
import 'package:birthday_app/bloc/menu_list/menu_list_cubit.dart';
import 'package:birthday_app/bloc/wishlist/wishlist_bloc.dart';
import 'package:birthday_app/common/app_go_router/go_router_names.dart';
import 'package:birthday_app/common/app_go_router/not_found_page.dart';
import 'package:birthday_app/di/di_container.dart';
import 'package:birthday_app/presentation/home/pages/home_page.dart';
import 'package:birthday_app/presentation/menu_detail/pages/menu_detail_page.dart';
import 'package:birthday_app/presentation/quests_list/pages/guests_list_page.dart';
import 'package:birthday_app/presentation/wishlist/pages/wishlist_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppGoRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: AppGoRouterNames.home,
        builder: (context, state) {
          return BlocProvider<MenuListCubit>(
            create: (BuildContext context) => MenuListCubit(
              foodRepository: DIContainer.getFoodRepository(),
            )..loadFoods(),
            child: const HomePage(),
          );
        },
      ),
      GoRoute(
        path: AppGoRouterNames.guestsList,
        builder: (context, state) => BlocProvider(
          create: (context) => GuestsListBloc(
            guestRepository: DIContainer.getGuestRepository(),
          )..add(const GuestsListEvent.started()),
          child: const QuestsListPage(),
        ),
      ),
      GoRoute(
        path: AppGoRouterNames.wishlist,
        builder: (context, state) {
          return BlocProvider(
            create: (context) =>
                WishlistBloc()..add(const WishlistEvent.started()),
            child: const WishlistPage(),
          );
        },
      ),
      GoRoute(
        path: AppGoRouterNames.menuDetail,
        builder: (context, state) {
          final id = int.tryParse(state.pathParameters['id'] ?? '0');
          if (id == null) return const NotFoundWidget();
          return BlocProvider<MenuDetailCubit>(
            create: (BuildContext context) => MenuDetailCubit(
              foodRepository: DIContainer.getFoodRepository(),
            )..loadFood(id),
            child: const MenuDetailPage(),
          );
        },
      ),
    ],
  );
}