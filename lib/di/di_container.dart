import 'dart:io';

import 'package:birthday_app/data/datasources/food_remote_data_source.dart';
import 'package:birthday_app/data/datasources/guest_local_data_source.dart';
import 'package:birthday_app/data/models/wish_model/wish_model.dart';
import 'package:birthday_app/data/repository/food_repository.dart';
import 'package:birthday_app/data/repository/guest_repository.dart';
import 'package:birthday_app/domain/repository/food_repository.dart';
import 'package:birthday_app/domain/repository/guest_repository.dart';
import 'package:dio/dio.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

abstract class DIContainer {
  static final _dio = Dio();

  static Future<Directory> _getDirectory() async =>
      await getApplicationDocumentsDirectory();

  static Future<Isar> getIsar() async => Isar.open(
        [WishModelSchema],
        directory: (await _getDirectory()).path,
      );

  static FoodRemoteDataSource _getFoodRemoteDataSource() =>
      FoodRemoteDataSourceImpl(dio: _dio);

  static FoodRepository getFoodRepository() => FoodRepositoryImpl(
        foodRemoteDataSource: _getFoodRemoteDataSource(),
      );

  static GuestLocalDataSource _getGuestLocalDataSource() =>
      GuestLocalDataSourceImpl();

  static GuestRepository getGuestRepository() =>
      GuestRepositoryImpl(guestLocalDataSource: _getGuestLocalDataSource());

  // static final _firebaseStore = FirebaseFirestore.instance;

  // static Future<WishLocalDataSource> _getWishLocalDataSource() async =>
  //     WishLocalDataSourceImpl(isar: isar);

  // static WishRemoteDataSource _getWishRemoteDataSource() =>
  //     WishRemoteDataSourceImpl(_firebaseStore);

  // static Future<WishRepository> getWishRepository() async => WishRepositoryImpl(
  //       wishLocalDataSource: await _getWishLocalDataSource(),
  //       wishRemoteDataSource: _getWishRemoteDataSource(),
  //     );
}
