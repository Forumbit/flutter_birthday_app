import 'package:isar/isar.dart';

part 'wish_model.g.dart';

@collection
class WishModel {
  Id id = Isar.autoIncrement;
  late String name;
  late String url;
  bool isBooked = false;
}
