part of 'guest_list_bloc.dart';

@freezed
class GuestsListEvent with _$GuestsListEvent {
  const factory GuestsListEvent.started() = _Started;
  const factory GuestsListEvent.onCreate(GuestEntity guest) = _OnCreate;
  const factory GuestsListEvent.onUpdate(GuestEntity guest) = _OnUpdate;
  const factory GuestsListEvent.onDelete(int id) = _OnDelete;
  const factory GuestsListEvent.onFilter(GuestsListFilterEnum filterBy) =
      _OnFilter;
}
