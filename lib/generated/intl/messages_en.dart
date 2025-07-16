// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(seatCount) => "Please select all ${seatCount} seats.";

  static String m1(seats) => "Seat Numbers\n${seats}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "arrivalStation": MessageLookupByLibrary.simpleMessage("Arrival"),
    "bookSeats": MessageLookupByLibrary.simpleMessage("Book Seats"),
    "cancelText": MessageLookupByLibrary.simpleMessage("Cancel"),
    "confirmBookingTitle": MessageLookupByLibrary.simpleMessage(
      "Would you like to book?",
    ),
    "confirmText": MessageLookupByLibrary.simpleMessage("Confirm"),
    "departureStation": MessageLookupByLibrary.simpleMessage("Departure"),
    "seatCountTitle": MessageLookupByLibrary.simpleMessage("Seat Count"),
    "seatSelected": MessageLookupByLibrary.simpleMessage("Selected"),
    "seatUnselected": MessageLookupByLibrary.simpleMessage("Unselected"),
    "selectSeat": MessageLookupByLibrary.simpleMessage("Select Seat"),
    "selectSeatWarning": m0,
    "selectStation": MessageLookupByLibrary.simpleMessage("Select"),
    "selectStationsWarning": MessageLookupByLibrary.simpleMessage(
      "Please select both departure and arrival stations.",
    ),
    "selectedSeatsLabel": m1,
    "stationBusan": MessageLookupByLibrary.simpleMessage("Busan"),
    "stationCheonanAsan": MessageLookupByLibrary.simpleMessage("Cheonan-Asan"),
    "stationDaejeon": MessageLookupByLibrary.simpleMessage("Daejeon"),
    "stationDongdaegu": MessageLookupByLibrary.simpleMessage("Dongdaegu"),
    "stationDongtan": MessageLookupByLibrary.simpleMessage("Dongtan"),
    "stationGimcheonGumi": MessageLookupByLibrary.simpleMessage(
      "Gimcheon-Gumi",
    ),
    "stationGyeongju": MessageLookupByLibrary.simpleMessage("Gyeongju"),
    "stationOsong": MessageLookupByLibrary.simpleMessage("Osong"),
    "stationPyeongtaekJije": MessageLookupByLibrary.simpleMessage(
      "Pyeongtaek-Jije",
    ),
    "stationSuseo": MessageLookupByLibrary.simpleMessage("Suseo"),
    "stationUlsan": MessageLookupByLibrary.simpleMessage("Ulsan"),
    "trainReservation": MessageLookupByLibrary.simpleMessage(
      "Train Reservation",
    ),
  };
}
