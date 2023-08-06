import 'package:birthday_app/common/app_images.dart';

class FoodEntity {
  final int id;
  final String name;
  final String image;
  final List<String>? ingredients;

  FoodEntity({
    required this.id,
    required this.name,
    required this.image,
    required this.ingredients,
  });
}


// for animation page
abstract class FoodData {
  static final foodData = <FoodEntity>[
    FoodEntity(
      id: 0,
      name: 'Канапе',
      image: AppImages.canapes,
      ingredients: null
    ),
    FoodEntity(
      id: 1,
      name: 'Сырная тарелка',
      image: AppImages.cheesePlate,
      ingredients: null,
    ),
    FoodEntity(
      id: 2,
      name: 'Шашлыки на мангале',
      image: AppImages.barbecue,
      ingredients: null,
    ),
    FoodEntity(
      id: 3,
      name: 'Морепродукты',
      image: AppImages.seafood,
      ingredients: null,
    ),
    FoodEntity(
      id: 4,
      name: 'Свежие фрукты',
      image: AppImages.freshFruit,
      ingredients: null,
    ),
    FoodEntity(
      id: 5,
      name: 'Авторские лимонады',
      image: AppImages.lemonades,
      ingredients: null,
    ),
  ];
}
