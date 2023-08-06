import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'guest_model.freezed.dart';

part 'guest_model.g.dart';

@freezed
class GuestModel extends HiveObject with _$GuestModel {

  GuestModel._();

  @HiveType(typeId: 0)
  factory GuestModel({
    @HiveField(0) required int? id,
    @HiveField(1) required String firstName,
    @HiveField(2) required String lastName,
    @HiveField(3) required DateTime age,
    @HiveField(4) required String phone,
    @HiveField(5) required String profession,
    @HiveField(6) required String? image,
  }) = _GuestModel;

  factory GuestModel.fromJson(Map<String, dynamic> json) =>
      _$GuestModelFromJson(json);
}
