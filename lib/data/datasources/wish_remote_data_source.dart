import 'package:birthday_app/data/models/wish_model/wish_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class WishRemoteDataSource {
  Future<void> create(WishModel wish);
  Future<List<WishModel>> get();
  Future<void> update(WishModel wish);
  Future<void> delete(String docId);
}

class WishRemoteDataSourceImpl implements WishRemoteDataSource {
  WishRemoteDataSourceImpl(this.database);

  final FirebaseFirestore database;

  @override
  Future<void> create(WishModel wish) async {
    await database.collection('wishlist').add(wish.toJson());
  }

  @override
  Future<List<WishModel>> get() async {
    final table = await database.collection('wishlist').get();
    final wishlist = table.docs.map((e) {
      final docId = e.id;
      return WishModel.fromJson(
        e.data(),
        docId,
      );
    }).toList();
    return wishlist;
  }

  @override
  Future<void> update(WishModel wish) async {
    await database
        .collection('wishlist')
        .doc(wish.documentId)
        .update(wish.toJson());
  }

  @override
  Future<void> delete(String docId) async {
    await database.collection('wishlist').doc(docId).delete();
  }
}
