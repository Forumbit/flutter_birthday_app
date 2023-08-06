import 'package:birthday_app/data/models/guest_model/guest_model.dart';
import 'package:birthday_app/domain/entities/guest_entity.dart';

abstract class GuestMapper {
  static GuestEntity toEntity(GuestModel model) {
    return GuestEntity(
      id: model.key,
      firstName: model.firstName,
      lastName: model.lastName,
      age: model.age,
      phone: model.phone,
      profession: model.profession,
      image: model.image,
    );
  }

  static GuestModel fromEntity(GuestEntity entity) {
    return GuestModel(
      id: entity.id,
      firstName: entity.firstName,
      lastName: entity.lastName,
      age: entity.age,
      phone: entity.phone,
      profession: entity.profession,
      image: entity.image,
    );
  }
}
