import 'package:birthday_app/data/datasources/food_remote_data_source.dart';
import 'package:birthday_app/data/repository/food_repository.dart';
import 'package:birthday_app/domain/repository/food_repository.dart';
import 'package:dio/dio.dart';

abstract class DIContainer {
  static final dio = Dio();

  static FoodRemoteDataSource _getFoodRemoteDataSource() =>
      FoodRemoteDataSourceImpl(dio: dio);


  static FoodRepository getFoodRepository() => FoodRepositoryImpl(
        foodRemoteDataSource: _getFoodRemoteDataSource(),
      );
}
