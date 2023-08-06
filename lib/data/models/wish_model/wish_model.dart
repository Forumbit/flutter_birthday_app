import 'package:isar/isar.dart';

part 'wish_model.g.dart';

@collection
class WishModel {
  Id? id = Isar.autoIncrement;
  String? documentId;
  late String name;
  late String url;
  bool isBooked = false;

  WishModel();

  factory WishModel.fromJson(Map<String, dynamic> json, String docId) =>
      WishModel()
        ..documentId = docId
        ..name = json['name'] as String
        ..url = json['url'] as String
        ..isBooked = json['isBooked'] as bool;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'url': url,
        'isBooked': isBooked,
      };
}
