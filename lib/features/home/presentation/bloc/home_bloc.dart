import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState()) {
    on<HomePageChangedEvent>(_onPageChanged);
    on<HomeMenuToggleEvent>(_onMenuToggled);
    on<HomeEntertainmentsToggleEvent>(_onEntertainmentsToggled);
  }
  _onPageChanged(HomePageChangedEvent event, Emitter<HomeState> emit) {
    final page = event.page;
    emit(state.copyWith(page: page));
  }

  _onMenuToggled(HomeMenuToggleEvent event, Emitter<HomeState> emit) {
    final menuIsOpen = !event.menuIsOpen;
    emit(state.copyWith(menuIsOpen: menuIsOpen));
  }

  _onEntertainmentsToggled(
      HomeEntertainmentsToggleEvent event, Emitter<HomeState> emit) {
    final entertainmentsIsOpen = !event.entertainmentsIsOpen;
    emit(state.copyWith(entertainmentsIsOpen: entertainmentsIsOpen));
  }
}
