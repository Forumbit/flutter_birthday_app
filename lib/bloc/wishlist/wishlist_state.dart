part of 'wishlist_bloc.dart';

@freezed
class WishlistState with _$WishlistState {
  const factory WishlistState.initial() = _Initial;
  const factory WishlistState.loading() = _Loading;
  const factory WishlistState.loaded(List<WishEntity> wishlist) = _Loaded;
  const factory WishlistState.error(String? error) = _Error;
}
