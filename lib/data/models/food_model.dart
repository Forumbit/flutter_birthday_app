import 'package:birthday_app/domain/entities/food_entity.dart';

class FoodModel extends FoodEntity {
  FoodModel({
    required id,
    required name,
    required image,
    required ingredients,
  }) : super(
          id: id,
          name: name,
          image: image,
          ingredients: ingredients?.cast<String>(),
        );

  factory FoodModel.fromJson(Map<String, dynamic> json) {
    return FoodModel(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      ingredients: json['ingredients']?.map((e) => e as String).toList(),
    );
  }
}
