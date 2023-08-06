import 'package:birthday_app/config/hive_box_name.dart';
import 'package:birthday_app/data/models/guest_model/guest_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class GuestLocalDataSource {
  Future<void> createGuest(GuestModel guest);
  List<GuestModel> getGuests();
  Future<void> updateGuest(GuestModel guest);
  Future<void> deleteGuest(int id);
}

class GuestLocalDataSourceImpl implements GuestLocalDataSource {
  @override
  Future<void> createGuest(GuestModel guest) async {
    final box = Hive.box<GuestModel>(HiveBoxName.guestsBox);
    await box.add(guest);
  }

  @override
  List<GuestModel> getGuests() {
    final box = Hive.box<GuestModel>(HiveBoxName.guestsBox);
    return box.values.toList();
  }

  @override
  Future<void> updateGuest(GuestModel guest) async {
    final box = Hive.box<GuestModel>(HiveBoxName.guestsBox);
    await box.put(guest.id, guest);
  }

  @override
  Future<void> deleteGuest(int id) async {
    final box = Hive.box<GuestModel>(HiveBoxName.guestsBox);
    await box.delete(id);
  }
}
