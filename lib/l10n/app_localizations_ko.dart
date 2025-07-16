// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get confirmText => '확인';

  @override
  String get cancelText => '취소';

  @override
  String get trainReservation => '기차 예매';

  @override
  String get selectSeat => '좌석 선택';

  @override
  String get selectStation => '선택';

  @override
  String get departureStation => '출발역';

  @override
  String get arrivalStation => '도착역';

  @override
  String get seatCountTitle => '예약할 좌석 수';

  @override
  String get selectStationsWarning => '출발역과 도착역을 모두 선택해 주세요.';

  @override
  String get seatSelected => '선택됨';

  @override
  String get seatUnselected => '선택 안 됨';

  @override
  String get bookSeats => '예매 하기';

  @override
  String selectSeatWarning(int seatCount) {
    return '$seatCount인 좌석 모두 선택해 주세요.';
  }

  @override
  String get confirmBookingTitle => '예매 하시겠습니까?';

  @override
  String selectedSeatsLabel(String seats) {
    return '좌석 번호\n$seats';
  }

  @override
  String get stationSuseo => '수서';

  @override
  String get stationDongtan => '동탄';

  @override
  String get stationPyeongtaekJije => '평택지제';

  @override
  String get stationCheonanAsan => '천안아산';

  @override
  String get stationOsong => '오송';

  @override
  String get stationDaejeon => '대전';

  @override
  String get stationGimcheonGumi => '김천구미';

  @override
  String get stationDongdaegu => '동대구';

  @override
  String get stationGyeongju => '경주';

  @override
  String get stationUlsan => '울산';

  @override
  String get stationBusan => '부산';
}
