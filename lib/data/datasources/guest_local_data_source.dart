import 'package:birthday_app/data/models/guest_model/guest_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class GuestLocalDataSource {
  Future<void> createGuest(GuestModel guest);
  List<GuestModel> getGuests();
  Future<void> updateGuest(GuestModel guest);
  Future<void> deleteGuest(int id);
}

class GuestLocalDataSourceImpl implements GuestLocalDataSource {
  final Box<GuestModel> box;

  GuestLocalDataSourceImpl({required this.box});
  @override
  Future<void> createGuest(GuestModel guest) async {
    await box.add(guest);
  }

  @override
  List<GuestModel> getGuests() {
    return box.values.toList();
  }

  @override
  Future<void> updateGuest(GuestModel guest) async {
    await box.put(guest.id, guest);
  }

  @override
  Future<void> deleteGuest(int id) async {
    await box.delete(id);
  }
}
