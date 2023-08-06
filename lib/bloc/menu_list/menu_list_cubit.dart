import 'package:birthday_app/domain/entities/food_entity.dart';
import 'package:birthday_app/domain/repository/food_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_list_state.dart';
part 'menu_list_cubit.freezed.dart';

class MenuListCubit extends Cubit<MenuListState> {
  MenuListCubit({required this.foodRepository})
      : super(const MenuListState.initial());

  //* =========== Variables ===========
  final FoodRepository foodRepository;
  late final List<FoodEntity> _foods;

  //* =========== Methods ===========
  Future<void> loadFoods() async {
    try {
      emit(const MenuListState.loading());
      _foods = await foodRepository.getAllFoods();
      emit(MenuListState.loaded(_foods, false));
    } catch (e) {
      emit(const MenuListState.error());
    }
  }

  void onToggle(bool isToggle) {
    emit(MenuListState.loaded(_foods, !isToggle));
  }

  //* =========== Overrides ===========
  @override
  void onError(Object error, StackTrace stackTrace) {
    emit(const MenuListState.error());
    print('============ERROR===========');
    print('Error: $error');
    print('Stack trace: $stackTrace');
    print('============================');
    super.onError(error, stackTrace);
  }
}
