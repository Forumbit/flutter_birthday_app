import 'dart:io';

import 'package:birthday_app/bloc/guests_list/guest_list_bloc.dart';
import 'package:birthday_app/bloc/menu_detail/menu_detail_cubit.dart';
import 'package:birthday_app/bloc/menu_list/menu_list_cubit.dart';
import 'package:birthday_app/bloc/wishlist/wishlist_bloc.dart';
import 'package:birthday_app/common/navigation/navigation_route.dart';
import 'package:birthday_app/config/hive_box_name.dart';
import 'package:birthday_app/data/datasources/food_remote_data_source.dart';
import 'package:birthday_app/data/datasources/guest_local_data_source.dart';
import 'package:birthday_app/data/datasources/wish_local_data_source.dart';
import 'package:birthday_app/data/datasources/wish_remote_data_source.dart';
import 'package:birthday_app/data/models/guest_model/guest_model.dart';
import 'package:birthday_app/data/models/wish_model/wish_model.dart';
import 'package:birthday_app/data/repository/food_repository.dart';
import 'package:birthday_app/data/repository/guest_repository.dart';
import 'package:birthday_app/data/repository/wish_repository.dart';
import 'package:birthday_app/domain/repository/food_repository.dart';
import 'package:birthday_app/domain/repository/guest_repository.dart';
import 'package:birthday_app/domain/repository/wish_repository.dart';
import 'package:birthday_app/main.dart';
import 'package:birthday_app/presentation/home/pages/home_page.dart';
import 'package:birthday_app/presentation/menu_detail/pages/menu_detail_page.dart';
import 'package:birthday_app/presentation/quests_list/pages/guests_list_page.dart';
import 'package:birthday_app/presentation/wishlist/pages/wishlist_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

//* ============= App Configuration =============
AppFactory makeAppFactory() => AppFactoryDefault();

class AppFactoryDefault implements AppFactory {
  final _diContainer = _DIContainer();
  AppFactoryDefault();

  @override
  Widget makeApp() => MyApp(
        myAppNavigation: _diContainer._makeMyAppNavigation(),
        screenFactory: _diContainer._makeScreenFactory(),
      );

  @override
  Future<void> initializeApp() async {
    AndroidYandexMap.useAndroidViewSurface = false;
    WidgetsFlutterBinding.ensureInitialized();
    await Hive.initFlutter();
    Hive.registerAdapter(GuestModelAdapter());
    await Hive.openBox<GuestModel>(HiveBoxName.guestsBox);
    await Firebase.initializeApp();
    await _diContainer.initialize();
  }
}

//* ============= Main DI Container =============
class _DIContainer {
  final _dio = Dio();
  late final Isar _isar;
  late final Box<GuestModel> _box;
  late final FirebaseFirestore _firestore;

  //* DI Container init
  Future<void> initialize() async {
    _box = Hive.box<GuestModel>(HiveBoxName.guestsBox);
    _firestore = FirebaseFirestore.instance;
    _isar = await Isar.open(
      [WishModelSchema],
      directory: (await _getDirectory()).path,
    );
  }

  //* Database Configuration
  Database _getDatabase() => _HiveBase(_box);

  //* App Configuration
  ScreenFactory _makeScreenFactory() => _ScreenFactoryDefault(this);

  MyAppNavigation _makeMyAppNavigation() =>
      MyAppNavigationImpl(_makeScreenFactory());

  Future<Directory> _getDirectory() async =>
      await getApplicationDocumentsDirectory();

  //* Screen Configuration
  //* Menu Screen
  FoodRemoteDataSource _getFoodRemoteDataSource() =>
      FoodRemoteDataSourceImpl(dio: _dio);

  FoodRepository _getFoodRepository() => FoodRepositoryImpl(
        foodRemoteDataSource: _getFoodRemoteDataSource(),
      );

  //* Guests List Screen
  GuestLocalDataSource _getGuestLocalDataSource() =>
      GuestLocalDataSourceImpl(box: _box);

  GuestRepository _getGuestRepository() =>
      GuestRepositoryImpl(guestLocalDataSource: _getGuestLocalDataSource());

  //* Wishlist Screen
  WishLocalDataSource _getWishLocalDataSource() =>
      WishLocalDataSourceImpl(isar: _isar);

  WishRemoteDataSource _getWishRemoteDataSource() =>
      WishRemoteDataSourceImpl(_firestore);

  WishRepository _getWishRepository() => WishRepositoryImpl(
        wishLocalDataSource: _getWishLocalDataSource(),
        wishRemoteDataSource: _getWishRemoteDataSource(),
      );
  _DIContainer();
}

//* ============= Screen Configuration =============
class _ScreenFactoryDefault implements ScreenFactory {
  final _DIContainer _diContainer;

  _ScreenFactoryDefault(this._diContainer);

  @override
  Widget makeHome() => BlocProvider<MenuListCubit>(
        create: (BuildContext context) => MenuListCubit(
          foodRepository: _diContainer._getFoodRepository(),
        )..loadFoods(),
        child: const HomePage(),
      );

  @override
  Widget makeGuestsList() => BlocProvider(
        create: (BuildContext context) => GuestsListBloc(
          guestRepository: _diContainer._getGuestRepository(),
          database: _diContainer._getDatabase(),
        )..add(const GuestsListEvent.started()),
        child: const QuestsListPage(),
      );

  @override
  Widget makeWishlist() => BlocProvider(
        create: (BuildContext context) =>
            WishlistBloc(_diContainer._getWishRepository())
              ..add(const WishlistEvent.started()),
        child: const WishlistPage(),
      );

  @override
  Widget makeMenuDetail(int id) => BlocProvider<MenuDetailCubit>(
        create: (BuildContext context) => MenuDetailCubit(
          foodRepository: _diContainer._getFoodRepository(),
        )..loadFood(id),
        child: const MenuDetailPage(),
      );
}

//* Database Configuration
class _HiveBase<T> implements Database {
  final Box<T> box;

  _HiveBase(this.box);
  @override
  Future<void> compact() async {
    await box.compact();
  }
}
