import 'package:birthday_app/domain/entities/wish_entity.dart';
import 'package:birthday_app/domain/repository/wish_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';
part 'wishlist_bloc.freezed.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc(this._wishRepositoryImpl) : super(const _Initial()) {
    on<WishlistEvent>(
      (event, emit) => event.when(
        started: () => init(emit),
        onCreate: (WishEntity wishEntity) async => onCreate(wishEntity, emit),
        onUpdate: (WishEntity wishEntity) async => onUpdate(wishEntity, emit),
        onDelete: (WishEntity wishEntity) async => onDelete(wishEntity, emit),
      ),
    );
  }

  //* =========== Variables ===========
  // late final Isar _isar;
  final WishRepository _wishRepositoryImpl;

  //* =========== Methods ===========
  Future<void> init(Emitter<WishlistState> emit) async {
    // final dir = await getApplicationDocumentsDirectory();
    // final isar = await Isar.open(
    //   [WishModelSchema],
    //   directory: dir.path,
    // );
    // _isar = isar;
    // _wishRepositoryImpl = WishRepositoryImpl(
    //   wishLocalDataSource: WishLocalDataSourceImpl(isar: _isar),
    //   wishRemoteDataSource:
    //       WishRemoteDataSourceImpl(FirebaseFirestore.instance),
    // );
    await get(emit);
  }

  Future<void> get(Emitter<WishlistState> emit) async {
    print('32424');
    try {
      emit(const WishlistState.loading());
      final wishlist = await _wishRepositoryImpl.get();
      emit(WishlistState.loaded(wishlist));
    } catch (e) {
      emit(WishlistState.error(e.toString()));
    }
  }

  Future<void> onCreate(
      WishEntity wishEntity, Emitter<WishlistState> emit) async {
    await _wishRepositoryImpl.create(wishEntity);
    await get(emit);
  }

  Future<void> onUpdate(
      WishEntity wishEntity, Emitter<WishlistState> emit) async {
    await _wishRepositoryImpl.update(wishEntity);
    await get(emit);
  }

  Future<void> onDelete(
      WishEntity wishEntity, Emitter<WishlistState> emit) async {
    await _wishRepositoryImpl.delete(wishEntity);
    await get(emit);
  }

  //* =========== Overrides ===========
  @override
  void onError(Object error, StackTrace stackTrace) {
    print('============ERROR===========');
    print('Error: $error');
    print('Stack trace: $stackTrace');
    print('============================');
    super.onError(error, stackTrace);
  }

  // @override
  // Future<void> close() async {
  //   await _isar.close();
  //   return super.close();
  // }
}
