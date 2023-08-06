class WishEntity {
  final int? id;
  final String? documentId;
  final String name;
  final String url;
  final bool isBooked;

  WishEntity({
    required this.id,
    required this.documentId,
    required this.name,
    required this.url,
    required this.isBooked,
  });

  WishEntity copyWith({
    int? id,
    String? documentId,
    String? name,
    String? url,
    bool? isBooked,
  }) {
    return WishEntity(
      id: id ?? this.id,
      documentId: documentId ?? this.documentId,
      name: name ?? this.name,
      url: url ?? this.url, 
      isBooked: isBooked ?? this.isBooked,
    );
  }
}
