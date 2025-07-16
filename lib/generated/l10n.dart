// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Confirm`
  String get confirmText {
    return Intl.message('Confirm', name: 'confirmText', desc: '', args: []);
  }

  /// `Cancel`
  String get cancelText {
    return Intl.message('Cancel', name: 'cancelText', desc: '', args: []);
  }

  /// `Train Reservation`
  String get trainReservation {
    return Intl.message(
      'Train Reservation',
      name: 'trainReservation',
      desc: '',
      args: [],
    );
  }

  /// `Select Seat`
  String get selectSeat {
    return Intl.message('Select Seat', name: 'selectSeat', desc: '', args: []);
  }

  /// `Select`
  String get selectStation {
    return Intl.message('Select', name: 'selectStation', desc: '', args: []);
  }

  /// `Departure`
  String get departureStation {
    return Intl.message(
      'Departure',
      name: 'departureStation',
      desc: '',
      args: [],
    );
  }

  /// `Arrival`
  String get arrivalStation {
    return Intl.message('Arrival', name: 'arrivalStation', desc: '', args: []);
  }

  /// `Seat Count`
  String get seatCountTitle {
    return Intl.message(
      'Seat Count',
      name: 'seatCountTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please select both departure and arrival stations.`
  String get selectStationsWarning {
    return Intl.message(
      'Please select both departure and arrival stations.',
      name: 'selectStationsWarning',
      desc: '',
      args: [],
    );
  }

  /// `Selected`
  String get seatSelected {
    return Intl.message('Selected', name: 'seatSelected', desc: '', args: []);
  }

  /// `Unselected`
  String get seatUnselected {
    return Intl.message(
      'Unselected',
      name: 'seatUnselected',
      desc: '',
      args: [],
    );
  }

  /// `Book Seats`
  String get bookSeats {
    return Intl.message('Book Seats', name: 'bookSeats', desc: '', args: []);
  }

  /// `Please select all {seatCount} seats.`
  String selectSeatWarning(int seatCount) {
    return Intl.message(
      'Please select all $seatCount seats.',
      name: 'selectSeatWarning',
      desc:
          'Warns the user to select all required seats when not enough are selected.',
      args: [seatCount],
    );
  }

  /// `Would you like to book?`
  String get confirmBookingTitle {
    return Intl.message(
      'Would you like to book?',
      name: 'confirmBookingTitle',
      desc: '',
      args: [],
    );
  }

  /// `Seat Numbers\n{seats}`
  String selectedSeatsLabel(String seats) {
    return Intl.message(
      'Seat Numbers\n$seats',
      name: 'selectedSeatsLabel',
      desc:
          'Displays the seat numbers selected by the user, separated by commas.',
      args: [seats],
    );
  }

  /// `Suseo`
  String get stationSuseo {
    return Intl.message('Suseo', name: 'stationSuseo', desc: '', args: []);
  }

  /// `Dongtan`
  String get stationDongtan {
    return Intl.message('Dongtan', name: 'stationDongtan', desc: '', args: []);
  }

  /// `Pyeongtaek-Jije`
  String get stationPyeongtaekJije {
    return Intl.message(
      'Pyeongtaek-Jije',
      name: 'stationPyeongtaekJije',
      desc: '',
      args: [],
    );
  }

  /// `Cheonan-Asan`
  String get stationCheonanAsan {
    return Intl.message(
      'Cheonan-Asan',
      name: 'stationCheonanAsan',
      desc: '',
      args: [],
    );
  }

  /// `Osong`
  String get stationOsong {
    return Intl.message('Osong', name: 'stationOsong', desc: '', args: []);
  }

  /// `Daejeon`
  String get stationDaejeon {
    return Intl.message('Daejeon', name: 'stationDaejeon', desc: '', args: []);
  }

  /// `Gimcheon-Gumi`
  String get stationGimcheonGumi {
    return Intl.message(
      'Gimcheon-Gumi',
      name: 'stationGimcheonGumi',
      desc: '',
      args: [],
    );
  }

  /// `Dongdaegu`
  String get stationDongdaegu {
    return Intl.message(
      'Dongdaegu',
      name: 'stationDongdaegu',
      desc: '',
      args: [],
    );
  }

  /// `Gyeongju`
  String get stationGyeongju {
    return Intl.message(
      'Gyeongju',
      name: 'stationGyeongju',
      desc: '',
      args: [],
    );
  }

  /// `Ulsan`
  String get stationUlsan {
    return Intl.message('Ulsan', name: 'stationUlsan', desc: '', args: []);
  }

  /// `Busan`
  String get stationBusan {
    return Intl.message('Busan', name: 'stationBusan', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ko'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
