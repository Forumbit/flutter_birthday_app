// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guest_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GuestModel _$GuestModelFromJson(Map<String, dynamic> json) {
  return _GuestModel.fromJson(json);
}

/// @nodoc
mixin _$GuestModel {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get firstName => throw _privateConstructorUsedError;
  @HiveField(2)
  String get lastName => throw _privateConstructorUsedError;
  @HiveField(3)
  DateTime get age => throw _privateConstructorUsedError;
  @HiveField(4)
  String get phone => throw _privateConstructorUsedError;
  @HiveField(5)
  String get profession => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuestModelCopyWith<GuestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestModelCopyWith<$Res> {
  factory $GuestModelCopyWith(
          GuestModel value, $Res Function(GuestModel) then) =
      _$GuestModelCopyWithImpl<$Res, GuestModel>;
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String firstName,
      @HiveField(2) String lastName,
      @HiveField(3) DateTime age,
      @HiveField(4) String phone,
      @HiveField(5) String profession,
      @HiveField(6) String? image});
}

/// @nodoc
class _$GuestModelCopyWithImpl<$Res, $Val extends GuestModel>
    implements $GuestModelCopyWith<$Res> {
  _$GuestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = null,
    Object? lastName = null,
    Object? age = null,
    Object? phone = null,
    Object? profession = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      profession: null == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GuestModelCopyWith<$Res>
    implements $GuestModelCopyWith<$Res> {
  factory _$$_GuestModelCopyWith(
          _$_GuestModel value, $Res Function(_$_GuestModel) then) =
      __$$_GuestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String firstName,
      @HiveField(2) String lastName,
      @HiveField(3) DateTime age,
      @HiveField(4) String phone,
      @HiveField(5) String profession,
      @HiveField(6) String? image});
}

/// @nodoc
class __$$_GuestModelCopyWithImpl<$Res>
    extends _$GuestModelCopyWithImpl<$Res, _$_GuestModel>
    implements _$$_GuestModelCopyWith<$Res> {
  __$$_GuestModelCopyWithImpl(
      _$_GuestModel _value, $Res Function(_$_GuestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = null,
    Object? lastName = null,
    Object? age = null,
    Object? phone = null,
    Object? profession = null,
    Object? image = freezed,
  }) {
    return _then(_$_GuestModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      profession: null == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _$_GuestModel extends _GuestModel {
  _$_GuestModel(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.firstName,
      @HiveField(2) required this.lastName,
      @HiveField(3) required this.age,
      @HiveField(4) required this.phone,
      @HiveField(5) required this.profession,
      @HiveField(6) required this.image})
      : super._();

  factory _$_GuestModel.fromJson(Map<String, dynamic> json) =>
      _$$_GuestModelFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final String firstName;
  @override
  @HiveField(2)
  final String lastName;
  @override
  @HiveField(3)
  final DateTime age;
  @override
  @HiveField(4)
  final String phone;
  @override
  @HiveField(5)
  final String profession;
  @override
  @HiveField(6)
  final String? image;

  @override
  String toString() {
    return 'GuestModel(id: $id, firstName: $firstName, lastName: $lastName, age: $age, phone: $phone, profession: $profession, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GuestModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.profession, profession) ||
                other.profession == profession) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, firstName, lastName, age, phone, profession, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GuestModelCopyWith<_$_GuestModel> get copyWith =>
      __$$_GuestModelCopyWithImpl<_$_GuestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GuestModelToJson(
      this,
    );
  }
}

abstract class _GuestModel extends GuestModel {
  factory _GuestModel(
      {@HiveField(0) required final int? id,
      @HiveField(1) required final String firstName,
      @HiveField(2) required final String lastName,
      @HiveField(3) required final DateTime age,
      @HiveField(4) required final String phone,
      @HiveField(5) required final String profession,
      @HiveField(6) required final String? image}) = _$_GuestModel;
  _GuestModel._() : super._();

  factory _GuestModel.fromJson(Map<String, dynamic> json) =
      _$_GuestModel.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  String get firstName;
  @override
  @HiveField(2)
  String get lastName;
  @override
  @HiveField(3)
  DateTime get age;
  @override
  @HiveField(4)
  String get phone;
  @override
  @HiveField(5)
  String get profession;
  @override
  @HiveField(6)
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_GuestModelCopyWith<_$_GuestModel> get copyWith =>
      throw _privateConstructorUsedError;
}
