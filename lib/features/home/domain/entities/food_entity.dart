import 'package:birthday_app/common/app_images/app_images.dart';

class FoodEntity {
  final int id;
  final String name;
  final String image;

  FoodEntity({
    required this.id,
    required this.name,
    required this.image,
  });
}

abstract class FoodData {
  static final foodData = <FoodEntity>[
    FoodEntity(id: 0, name: 'Канапе', image: AppImages.canapes),
    FoodEntity(id: 1, name: 'Сырная тарелка', image: AppImages.cheesePlate),
    FoodEntity(id: 2, name: 'Шашлыки на мангале', image: AppImages.barbecue),
    FoodEntity(id: 3, name: 'Морепродукты', image: AppImages.seafood),
    FoodEntity(id: 4, name: 'Свежие фрукты', image: AppImages.freshFruit),
    FoodEntity(id: 5, name: 'Авторские лимонады', image: AppImages.lemonades),
  ];
}
