class GuestEntity {
  final int? id;
  final String firstName;
  final String lastName;
  final DateTime age;
  final String phone;
  final String profession;
  final String? image;

  GuestEntity({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.phone,
    required this.profession,
    required this.image,
  });

  GuestEntity copyWith({
    int? id,
    String? firstName,
    String? lastName,
    DateTime? age,
    String? phone,
    String? profession,
    String? image,
  }) {
    return GuestEntity(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      age: age ?? this.age,
      phone: phone ?? this.phone,
      profession: profession ?? this.profession,
      image: image ?? this.image,
    );
  }
}
