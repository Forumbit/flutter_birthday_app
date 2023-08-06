import 'package:birthday_app/data/datasources/guest_local_data_source.dart';
import 'package:birthday_app/data/mapper/guest_mapper.dart';
import 'package:birthday_app/data/models/guest_model/guest_model.dart';
import 'package:birthday_app/domain/entities/guest_entity.dart';
import 'package:birthday_app/domain/repository/guest_repository.dart';

class GuestRepositoryImpl implements GuestRepository {
  final GuestLocalDataSource guestLocalDataSource;

  GuestRepositoryImpl({required this.guestLocalDataSource});

  @override
  Future<void> createGuest(GuestEntity guest) async {
    try {
      final guestModel = GuestMapper.fromEntity(guest);
      await guestLocalDataSource.createGuest(guestModel);
    } catch (e) {
      print(e);
    }
  }

  @override
  List<GuestEntity> getGuests() {
    try {
      final guestsEntity = guestLocalDataSource
          .getGuests()
          .map((GuestModel model) => GuestMapper.toEntity(model))
          .toList();
      return guestsEntity;
    } catch (e) {
      print(e);
      throw Exception();
    }
  }

  @override
  Future<void> deleteGuest(int id) async {
    try {
      await guestLocalDataSource.deleteGuest(id);
    } catch (e) {
      print(e);
    }
  }

  @override
  Future<void> updateGuest(GuestEntity guest) async {
    try {
      final guestModel = GuestMapper.fromEntity(guest);
      await guestLocalDataSource.updateGuest(guestModel);
    } catch (e) {
      print(e);
    }
  }
}
