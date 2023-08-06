import 'package:birthday_app/common/app_images.dart';

class EntertainmentEntity {
  final int id;
  final String name;
  final String description;
  final String icon;

  EntertainmentEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.icon,
  });
}


// for home page
abstract class EntertainmentData {
  static final entertainmentsData = <EntertainmentEntity>[
    EntertainmentEntity(
      id: 0,
      name: 'Настольные игры',
      description: 'Мафия, уно, домино, экивоки и другие',
      icon: AppImages.game,
    ),
    EntertainmentEntity(
      id: 1,
      name: 'Бассейн',
      description: 'Два бассейна с подогревом',
      icon: AppImages.pool,
    ),
    EntertainmentEntity(
      id: 3,
      name: 'Настольные игры',
      description: 'Мафия, уно, домино, экивоки и другие',
      icon: AppImages.game,
    ),
    EntertainmentEntity(
      id: 4,
      name: 'Бассейн',
      description: 'Два бассейна с подогревом',
      icon: AppImages.pool,
    ),
  ];
}
