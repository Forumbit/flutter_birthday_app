// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GuestModelAdapter extends TypeAdapter<_$_GuestModel> {
  @override
  final int typeId = 0;

  @override
  _$_GuestModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_GuestModel(
      id: fields[0] as int?,
      firstName: fields[1] as String,
      lastName: fields[2] as String,
      age: fields[3] as DateTime,
      phone: fields[4] as String,
      profession: fields[5] as String,
      image: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_GuestModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.firstName)
      ..writeByte(2)
      ..write(obj.lastName)
      ..writeByte(3)
      ..write(obj.age)
      ..writeByte(4)
      ..write(obj.phone)
      ..writeByte(5)
      ..write(obj.profession)
      ..writeByte(6)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GuestModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GuestModel _$$_GuestModelFromJson(Map<String, dynamic> json) =>
    _$_GuestModel(
      id: json['id'] as int?,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      age: DateTime.parse(json['age'] as String),
      phone: json['phone'] as String,
      profession: json['profession'] as String,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_GuestModelToJson(_$_GuestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'age': instance.age.toIso8601String(),
      'phone': instance.phone,
      'profession': instance.profession,
      'image': instance.image,
    };
