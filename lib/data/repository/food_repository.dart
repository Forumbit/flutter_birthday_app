import 'dart:io';
import 'package:birthday_app/common/method/model_methods.dart';
import 'package:birthday_app/data/datasources/food_remote_data_source.dart';
import 'package:birthday_app/domain/entities/food_entity.dart';
import 'package:birthday_app/domain/repository/food_repository.dart';

class FoodRepositoryImpl implements FoodRepository {
  final FoodRemoteDataSource foodRemoteDataSource;
  FoodRepositoryImpl({
    required this.foodRemoteDataSource,
  });

  @override
  Future<List<FoodEntity>> getAllFoods() async {
    try {
      final isInternetAvailable = await ModelMethods.isInternetAvailable();
      if (isInternetAvailable) {
        final remoteFoods = await foodRemoteDataSource.getAllFoods();
        return remoteFoods;
      } else {
        throw const SocketException('e');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<FoodEntity> getFoodById(int id) async {
    try {
      final remoteFood = await foodRemoteDataSource.getFoodById(id);
      return remoteFood;
    } catch (e) {
      rethrow;
    }
  }
}
