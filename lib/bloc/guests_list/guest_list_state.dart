part of 'guest_list_bloc.dart';

@freezed
class GuestsListState with _$GuestsListState {
  const factory GuestsListState.initial() = _Initial;
  const factory GuestsListState.loading() = _Loading;
  const factory GuestsListState.loaded(
      List<GuestEntity> guests, GuestsListFilterEnum filterBy) = _Loaded;
  const factory GuestsListState.error() = _Error;
}
