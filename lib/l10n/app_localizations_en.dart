// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get confirmText => 'Confirm';

  @override
  String get cancelText => 'Cancel';

  @override
  String get trainReservation => 'Train Reservation';

  @override
  String get selectSeat => 'Select Seat';

  @override
  String get selectStation => 'Select';

  @override
  String get departureStation => 'Departure';

  @override
  String get arrivalStation => 'Arrival';

  @override
  String get seatCountTitle => 'Seat Count';

  @override
  String get selectStationsWarning =>
      'Please select both departure and arrival stations.';

  @override
  String get seatSelected => 'Selected';

  @override
  String get seatUnselected => 'Unselected';

  @override
  String get bookSeats => 'Book Seats';

  @override
  String selectSeatWarning(int seatCount) {
    return 'Please select all $seatCount seats.';
  }

  @override
  String get confirmBookingTitle => 'Would you like to book?';

  @override
  String selectedSeatsLabel(String seats) {
    return 'Seat Numbers\n$seats';
  }

  @override
  String get stationSuseo => 'Suseo';

  @override
  String get stationDongtan => 'Dongtan';

  @override
  String get stationPyeongtaekJije => 'Pyeongtaek-Jije';

  @override
  String get stationCheonanAsan => 'Cheonan-Asan';

  @override
  String get stationOsong => 'Osong';

  @override
  String get stationDaejeon => 'Daejeon';

  @override
  String get stationGimcheonGumi => 'Gimcheon-Gumi';

  @override
  String get stationDongdaegu => 'Dongdaegu';

  @override
  String get stationGyeongju => 'Gyeongju';

  @override
  String get stationUlsan => 'Ulsan';

  @override
  String get stationBusan => 'Busan';
}
