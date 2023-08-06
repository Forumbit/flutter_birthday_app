import 'package:birthday_app/data/models/wish_model/wish_model.dart';
import 'package:birthday_app/domain/entities/wish_entity.dart';

abstract class WishMapper {
  static WishModel fromEntity(WishEntity entity) {
    final wishModel = WishModel()
      ..documentId = entity.documentId
      ..name = entity.name
      ..url = entity.url
      ..isBooked = entity.isBooked;
    if (entity.id != null) wishModel.id = entity.id as int;
    return wishModel;
  }

  static WishEntity toEntity(WishModel model) {
    return WishEntity(
      id: model.id,
      documentId: model.documentId,
      name: model.name,
      url: model.url,
      isBooked: model.isBooked,
    );
  }
}
