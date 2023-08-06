import 'package:birthday_app/data/datasources/wish_local_data_source.dart';
import 'package:birthday_app/data/mapper/wish_mapper.dart';
import 'package:birthday_app/data/models/wish_model/wish_model.dart';
import 'package:birthday_app/domain/entities/wish_entity.dart';
import 'package:birthday_app/domain/repository/wish_repository.dart';

class WishRepositoryImpl implements WishRepository {
  WishRepositoryImpl({required this.wishLocalDataSource});

  final WishLocalDataSource wishLocalDataSource;

  @override
  Future<void> create(WishEntity wishEntity) async {
    try {
      final wishModel = WishMapper.fromEntity(wishEntity);
      await wishLocalDataSource.create(wishModel);
    } catch (e) {
      print(e);
    }
  }

  @override
  Future<void> delete(int id) async {
    try {
      await wishLocalDataSource.delete(id);
    } catch (e) {
      print(e);
    }
  }

  @override
  Future<List<WishEntity>> get() async {
    try {
      final wishModels = await wishLocalDataSource.get();
      final wishEntities = wishModels
          .map((WishModel model) => WishMapper.toEntity(model))
          .toList();
      return wishEntities;
    } catch (e) {
      print(e);
      throw Exception();
    }
  }

  @override
  Future<void> update(WishEntity wishEntity) async {
    try {
      final wishModel = WishMapper.fromEntity(wishEntity);
      await wishLocalDataSource.update(wishModel);
    } catch (e) {
      print(e);
    }
  }
}
