part of 'wishlist_bloc.dart';

@freezed
class WishlistEvent with _$WishlistEvent {
  const factory WishlistEvent.started() = _Started;
  const factory WishlistEvent.onCreate(WishEntity wishlistEntity) = _OnCreate;
  const factory WishlistEvent.onUpdate(WishEntity wishlistEntity) = _OnUpdate;
  const factory WishlistEvent.onDelete(WishEntity wishlistEntity) = _OnDelete;
}
