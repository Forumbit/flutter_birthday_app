part of 'menu_list_cubit.dart';

@freezed
class MenuListState with _$MenuListState {
  const factory MenuListState.initial() = _Initial;
  const factory MenuListState.loading() = _Loading;
  const factory MenuListState.loaded(List<FoodEntity> foods, bool isToggle) = _Loaded;
  const factory MenuListState.error() = _Error;
}