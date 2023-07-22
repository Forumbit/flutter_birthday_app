part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class HomePageChangedEvent extends HomeEvent {
  final int page;
  HomePageChangedEvent(this.page);
}

class HomeMenuToggleEvent extends HomeEvent {
  final bool menuIsOpen;
  HomeMenuToggleEvent(this.menuIsOpen);
}

class HomeEntertainmentsToggleEvent extends HomeEvent {
  final bool entertainmentsIsOpen;
  HomeEntertainmentsToggleEvent(this.entertainmentsIsOpen);
}
