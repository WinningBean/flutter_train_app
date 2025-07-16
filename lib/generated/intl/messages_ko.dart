// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ko locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ko';

  static String m0(seatCount) => "${seatCount}인 좌석 모두 선택해 주세요.";

  static String m1(seats) => "좌석 번호\n${seats}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "arrivalStation": MessageLookupByLibrary.simpleMessage("도착역"),
    "bookSeats": MessageLookupByLibrary.simpleMessage("예매 하기"),
    "cancelText": MessageLookupByLibrary.simpleMessage("취소"),
    "confirmBookingTitle": MessageLookupByLibrary.simpleMessage("예매 하시겠습니까?"),
    "confirmText": MessageLookupByLibrary.simpleMessage("확인"),
    "departureStation": MessageLookupByLibrary.simpleMessage("출발역"),
    "seatCountTitle": MessageLookupByLibrary.simpleMessage("예약할 좌석 수"),
    "seatSelected": MessageLookupByLibrary.simpleMessage("선택됨"),
    "seatUnselected": MessageLookupByLibrary.simpleMessage("선택 안 됨"),
    "selectSeat": MessageLookupByLibrary.simpleMessage("좌석 선택"),
    "selectSeatWarning": m0,
    "selectStation": MessageLookupByLibrary.simpleMessage("선택"),
    "selectStationsWarning": MessageLookupByLibrary.simpleMessage(
      "출발역과 도착역을 모두 선택해 주세요.",
    ),
    "selectedSeatsLabel": m1,
    "stationBusan": MessageLookupByLibrary.simpleMessage("부산"),
    "stationCheonanAsan": MessageLookupByLibrary.simpleMessage("천안아산"),
    "stationDaejeon": MessageLookupByLibrary.simpleMessage("대전"),
    "stationDongdaegu": MessageLookupByLibrary.simpleMessage("동대구"),
    "stationDongtan": MessageLookupByLibrary.simpleMessage("동탄"),
    "stationGimcheonGumi": MessageLookupByLibrary.simpleMessage("김천구미"),
    "stationGyeongju": MessageLookupByLibrary.simpleMessage("경주"),
    "stationOsong": MessageLookupByLibrary.simpleMessage("오송"),
    "stationPyeongtaekJije": MessageLookupByLibrary.simpleMessage("평택지제"),
    "stationSuseo": MessageLookupByLibrary.simpleMessage("수서"),
    "stationUlsan": MessageLookupByLibrary.simpleMessage("울산"),
    "trainReservation": MessageLookupByLibrary.simpleMessage("기차 예매"),
  };
}
