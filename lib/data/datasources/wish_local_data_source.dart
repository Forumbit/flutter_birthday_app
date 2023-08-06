
import 'package:birthday_app/data/models/wish_model/wish_model.dart';
import 'package:isar/isar.dart';

abstract class WishLocalDataSource {
  Future<void> create(WishModel wish);
  Future<List<WishModel>> get();
  Future<void> update(WishModel wish);
  Future<void> delete(int id);
}

class WishLocalDataSourceImpl implements WishLocalDataSource {
  WishLocalDataSourceImpl({required this.isar});

  final Isar isar;

  @override
  Future<void> create(WishModel wish) async {
    await isar.writeTxn(
      () async => await isar.wishModels.put(wish),
    );
  }

  @override
  Future<List<WishModel>> get() async {
    final wishlist = isar.collection<WishModel>().where().findAll();
    return wishlist;
  }

  @override
  Future<void> update(WishModel wishlist) async {
    await isar.writeTxn(
      () async => await isar.wishModels.put(wishlist),
    );
  }

  @override
  Future<void> delete(int id) async {
    await isar.writeTxn(
      () async => await isar.wishModels.delete(id),
    );
  }
}
