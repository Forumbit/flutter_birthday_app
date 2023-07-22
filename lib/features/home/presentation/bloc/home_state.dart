part of 'home_bloc.dart';

class HomeState {
  final int page;
  final bool menuIsOpen;
  final bool entertainmentsIsOpen;

  HomeState({
    this.page = 0,
    this.menuIsOpen = false,
    this.entertainmentsIsOpen = false,
  });

  HomeState copyWith({
    int? page,
    bool? menuIsOpen,
    bool? entertainmentsIsOpen,
  }) {
    return HomeState(
      page: page ?? this.page,
      menuIsOpen: menuIsOpen ?? this.menuIsOpen,
      entertainmentsIsOpen: entertainmentsIsOpen ?? this.entertainmentsIsOpen,
    );
  }
}
