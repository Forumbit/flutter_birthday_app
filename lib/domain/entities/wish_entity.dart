class WishEntity {
  final int? id;
  final String name;
  final String url;
  final bool isBooked;

  WishEntity({
    required this.id,
    required this.name,
    required this.url,
    required this.isBooked,
  });

  WishEntity copyWith({
    int? id,
    String? name,
    String? url,
    bool? isBooked,
  }) {
    return WishEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      url: url ?? this.url, 
      isBooked: isBooked ?? this.isBooked,
    );
  }
}
