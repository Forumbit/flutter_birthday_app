import 'package:birthday_app/common/method/model_methods.dart';
import 'package:birthday_app/data/datasources/wish_local_data_source.dart';
import 'package:birthday_app/data/datasources/wish_remote_data_source.dart';
import 'package:birthday_app/data/mapper/wish_mapper.dart';
import 'package:birthday_app/data/models/wish_model/wish_model.dart';
import 'package:birthday_app/domain/entities/wish_entity.dart';
import 'package:birthday_app/domain/repository/wish_repository.dart';

class WishRepositoryImpl implements WishRepository {
  WishRepositoryImpl({
    required this.wishLocalDataSource,
    required this.wishRemoteDataSource,
  });

  final WishLocalDataSource wishLocalDataSource;
  final WishRemoteDataSource wishRemoteDataSource;

  @override
  Future<void> create(WishEntity wishEntity) async {
    final isInternetAvailable = await ModelMethods.isInternetAvailable();
    try {
      if (isInternetAvailable) {
        final wishModel = WishMapper.fromEntity(wishEntity);
        await wishRemoteDataSource.create(wishModel);
      } else {
        final wishModel = WishMapper.fromEntity(wishEntity);
        await wishLocalDataSource.create(wishModel);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Future<void> delete(WishEntity wishEntity) async {
    final isInternetAvailable = await ModelMethods.isInternetAvailable();
    try {
      if (isInternetAvailable) {
        await wishRemoteDataSource.delete(wishEntity.documentId!);
      } else {
        await wishLocalDataSource.delete(wishEntity.id!);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Future<List<WishEntity>> get() async {
    final isInternetAvailable = await ModelMethods.isInternetAvailable();
    print('32424');
    try {
      if (isInternetAvailable) {
        final wishModels = await wishRemoteDataSource.get();
        return wishModels
            .map((wishModel) => WishMapper.toEntity(wishModel))
            .toList();
      } else {
        final wishModels = await wishLocalDataSource.get();
        final wishEntities = wishModels
            .map((WishModel model) => WishMapper.toEntity(model))
            .toList();
        return wishEntities;
      }
    } catch (e) {
      print(e);
      throw Exception();
    }
  }

  @override
  Future<void> update(WishEntity wishEntity) async {
    final isInternetAvailable = await ModelMethods.isInternetAvailable();
    try {
      if (isInternetAvailable) {
        final wishModel = WishMapper.fromEntity(wishEntity);
        await wishRemoteDataSource.update(wishModel);
      } else {
        print('dkjldsfj;');
        final wishModel = WishMapper.fromEntity(wishEntity);
        await wishLocalDataSource.update(wishModel);
      }
    } catch (e) {
      print(e);
    }
  }
}
