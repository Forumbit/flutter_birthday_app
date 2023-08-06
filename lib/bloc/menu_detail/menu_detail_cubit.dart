import 'package:birthday_app/domain/entities/food_entity.dart';
import 'package:birthday_app/domain/repository/food_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_detail_cubit.freezed.dart';
part 'menu_detail_state.dart';

class MenuDetailCubit extends Cubit<MenuDetailState> {
  final FoodRepository foodRepository;
  MenuDetailCubit({required this.foodRepository})
      : super(const MenuDetailState.initial());

  Future<void> loadFood(int id) async {
    try {
      emit(const MenuDetailState.loading());
      final food = await foodRepository.getFoodById(id);
      emit(MenuDetailState.loaded(food));
    } catch (e) {
      emit(const MenuDetailState.error());
    }
  }


  @override
  void onError(Object error, StackTrace stackTrace) {
    emit(const MenuDetailState.error());
    print('============ERROR===========');
    print('Error: $error');
    print('Stack trace: $stackTrace');
    print('============================');
    super.onError(error, stackTrace);
  }
}
