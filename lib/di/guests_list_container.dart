import 'package:birthday_app/data/datasources/guest_local_data_source.dart';
import 'package:birthday_app/data/repository/guest_repository.dart';
import 'package:birthday_app/domain/repository/guest_repository.dart';

abstract class GuestsListContainer {
  static GuestLocalDataSource _getGuestLocalDataSource() =>
      GuestLocalDataSourceImpl();

  static GuestRepository getGuestRepository() =>
      GuestRepositoryImpl(guestLocalDataSource: _getGuestLocalDataSource());
}
