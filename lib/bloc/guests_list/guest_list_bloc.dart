import 'package:birthday_app/domain/entities/guest_entity.dart';
import 'package:birthday_app/domain/enum/guests_list_filter_enum.dart';
import 'package:birthday_app/domain/repository/guest_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'guest_list_event.dart';
part 'guest_list_state.dart';
part 'guest_list_bloc.freezed.dart';

abstract class Database {
  Future<void> compact();
}

class GuestsListBloc extends Bloc<GuestsListEvent, GuestsListState> {
  GuestsListBloc({
    required this.guestRepository,
    required this.database,
  }) : super(const _Initial()) {
    on<GuestsListEvent>(
      (event, emit) async {
        await event.when(
          started: () async => init(emit),
          onCreate: (GuestEntity guest) => createGuest(guest, emit),
          onUpdate: (GuestEntity guest) => updateGuest(guest, emit),
          onDelete: (int id) => deleteGuest(id, emit),
          onFilter: (GuestsListFilterEnum filterBy) =>
              filterGuest(filterBy, emit),
        );
      },
    );
  }

  //* =========== Variables ===========
  var _filterBy = GuestsListFilterEnum.byID;
  final GuestRepository guestRepository;
  final Database database;

  //* =========== Methods ===========
  Future<void> init(Emitter<GuestsListState> emit) async {
    getGuestsList(emit);
  }

  void getGuestsList(Emitter<GuestsListState> emit) {
    try {
      emit(const GuestsListState.loading());
      final guests = guestRepository.getGuests();
      if (_filterBy == GuestsListFilterEnum.byFirstName) {
        guests.sort((a, b) => a.firstName.compareTo(b.firstName));
      } else if (_filterBy == GuestsListFilterEnum.byAge) {
        guests.sort((a, b) => a.age.compareTo(b.age));
      } else {
        guests.sort((a, b) => a.id!.compareTo(b.id!));
      }
      emit(GuestsListState.loaded(guests, _filterBy));
    } catch (e) {
      print(e);
    }
  }

  Future<void> createGuest(
      GuestEntity guest, Emitter<GuestsListState> emit) async {
    try {
      await guestRepository.createGuest(guest);
      getGuestsList(emit);
    } catch (e) {
      emit(const GuestsListState.error());
    }
  }

  Future<void> updateGuest(
      GuestEntity guest, Emitter<GuestsListState> emit) async {
    try {
      await guestRepository.updateGuest(guest);
      getGuestsList(emit);
    } catch (e) {
      emit(const GuestsListState.error());
    }
  }

  Future<void> deleteGuest(int id, Emitter<GuestsListState> emit) async {
    try {
      await guestRepository.deleteGuest(id);
      getGuestsList(emit);
    } catch (e) {
      emit(const GuestsListState.error());
    }
  }

  Future<void> filterGuest(
      GuestsListFilterEnum filterBy, Emitter<GuestsListState> emit) async {
    print(filterBy);
    _filterBy = filterBy;
    getGuestsList(emit);
  }

  //* =========== Overrides ===========
  @override
  Future<void> close() async {
    database.compact();
    return super.close();
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    print('============ERROR===========');
    print('Error: $error');
    print('Stack trace: $stackTrace');
    print('============================');
    super.onError(error, stackTrace);
  }
}
