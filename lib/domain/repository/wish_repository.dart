import 'package:birthday_app/domain/entities/wish_entity.dart';

abstract class WishRepository {
  Future<void> create(WishEntity wishEntity);
  Future<List<WishEntity>> get();
  Future<void> update(WishEntity wishEntity);
  Future<void> delete(int id);
}