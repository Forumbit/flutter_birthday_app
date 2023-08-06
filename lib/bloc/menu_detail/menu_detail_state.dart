part of 'menu_detail_cubit.dart';

@freezed
class MenuDetailState with _$MenuDetailState {
  const factory MenuDetailState.initial() = _Initial;
  const factory MenuDetailState.loading() = _Loading;
  const factory MenuDetailState.loaded(FoodEntity food) = _Loaded;
  const factory MenuDetailState.error() = _Error;
}
