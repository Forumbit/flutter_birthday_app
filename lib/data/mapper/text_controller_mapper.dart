import 'package:birthday_app/config/text_controller_name/guest_text_controller_names.dart';
import 'package:birthday_app/config/text_controller_name/wishlist_text_controller_names.dart';
import 'package:birthday_app/domain/entities/guest_entity.dart';
import 'package:birthday_app/domain/entities/wish_entity.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

abstract class TextControllerMapper {
  //* Guest Entity
  static Map<String, TextEditingController> fromGuestEntity(
      GuestEntity? entity) {
    return {
      GuestTextControllerNames.firstName:
          TextEditingController(text: entity?.firstName),
      GuestTextControllerNames.lastName:
          TextEditingController(text: entity?.lastName),
      GuestTextControllerNames.age: TextEditingController(
          text: DateFormat('dd.MM.yyyy')
              .format(entity?.age ?? DateTime(2023, 1, 1))),
      GuestTextControllerNames.phone:
          TextEditingController(text: entity?.phone),
      GuestTextControllerNames.profession:
          TextEditingController(text: entity?.profession),
    };
  }

  static GuestEntity toGuestEntity(
      Map<String, TextEditingController> controllers, GuestEntity? guest) {
    return GuestEntity(
      id: guest?.id,
      firstName: controllers[GuestTextControllerNames.firstName]!.text,
      lastName: controllers[GuestTextControllerNames.lastName]!.text,
      age: DateFormat('dd.MM.yyyy')
          .parse(controllers[GuestTextControllerNames.age]!.text),
      phone: controllers[GuestTextControllerNames.phone]!.text,
      profession: controllers[GuestTextControllerNames.profession]!.text,
      image: guest?.image,
    );
  }

  //* Wishlist Entity
  static Map<String, TextEditingController> fromWishEntity(
      WishEntity? entity) {
    return {
      WishTextControllerNames.name:
          TextEditingController(text: entity?.name),
      WishTextControllerNames.url: TextEditingController(text: entity?.url),
    };
  }

  static WishEntity toWishEntity(
    Map<String, TextEditingController> controllers,
    WishEntity? entity,
  ) {
    return WishEntity(
      id: entity?.id,
      documentId: entity?.documentId,
      name: controllers[WishTextControllerNames.name]!.text,
      url: controllers[WishTextControllerNames.url]!.text,
      isBooked: entity?.isBooked ?? false,
    );
  }
}
