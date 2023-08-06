import 'package:birthday_app/domain/entities/guest_entity.dart';

abstract class GuestRepository {
  Future<void> createGuest(GuestEntity guest);
  List<GuestEntity> getGuests();
  Future<void> updateGuest(GuestEntity guest);
  Future<void> deleteGuest(int id);
}