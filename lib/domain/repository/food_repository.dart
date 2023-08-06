import 'package:birthday_app/domain/entities/food_entity.dart';

abstract class FoodRepository {
  Future<List<FoodEntity>> getAllFoods();
  Future<FoodEntity> getFoodById(int id);
}