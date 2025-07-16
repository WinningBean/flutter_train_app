import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ko.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ko'),
  ];

  /// No description provided for @confirmText.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirmText;

  /// No description provided for @cancelText.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancelText;

  /// No description provided for @trainReservation.
  ///
  /// In en, this message translates to:
  /// **'Train Reservation'**
  String get trainReservation;

  /// No description provided for @selectSeat.
  ///
  /// In en, this message translates to:
  /// **'Select Seat'**
  String get selectSeat;

  /// No description provided for @selectStation.
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get selectStation;

  /// No description provided for @departureStation.
  ///
  /// In en, this message translates to:
  /// **'Departure'**
  String get departureStation;

  /// No description provided for @arrivalStation.
  ///
  /// In en, this message translates to:
  /// **'Arrival'**
  String get arrivalStation;

  /// No description provided for @seatCountTitle.
  ///
  /// In en, this message translates to:
  /// **'Seat Count'**
  String get seatCountTitle;

  /// No description provided for @selectStationsWarning.
  ///
  /// In en, this message translates to:
  /// **'Please select both departure and arrival stations.'**
  String get selectStationsWarning;

  /// No description provided for @seatSelected.
  ///
  /// In en, this message translates to:
  /// **'Selected'**
  String get seatSelected;

  /// No description provided for @seatUnselected.
  ///
  /// In en, this message translates to:
  /// **'Unselected'**
  String get seatUnselected;

  /// No description provided for @bookSeats.
  ///
  /// In en, this message translates to:
  /// **'Book Seats'**
  String get bookSeats;

  /// Warns the user to select all required seats when not enough are selected.
  ///
  /// In en, this message translates to:
  /// **'Please select all {seatCount} seats.'**
  String selectSeatWarning(int seatCount);

  /// No description provided for @confirmBookingTitle.
  ///
  /// In en, this message translates to:
  /// **'Would you like to book?'**
  String get confirmBookingTitle;

  /// Displays the seat numbers selected by the user, separated by commas.
  ///
  /// In en, this message translates to:
  /// **'Seat Numbers\n{seats}'**
  String selectedSeatsLabel(String seats);

  /// No description provided for @stationSuseo.
  ///
  /// In en, this message translates to:
  /// **'Suseo'**
  String get stationSuseo;

  /// No description provided for @stationDongtan.
  ///
  /// In en, this message translates to:
  /// **'Dongtan'**
  String get stationDongtan;

  /// No description provided for @stationPyeongtaekJije.
  ///
  /// In en, this message translates to:
  /// **'Pyeongtaek-Jije'**
  String get stationPyeongtaekJije;

  /// No description provided for @stationCheonanAsan.
  ///
  /// In en, this message translates to:
  /// **'Cheonan-Asan'**
  String get stationCheonanAsan;

  /// No description provided for @stationOsong.
  ///
  /// In en, this message translates to:
  /// **'Osong'**
  String get stationOsong;

  /// No description provided for @stationDaejeon.
  ///
  /// In en, this message translates to:
  /// **'Daejeon'**
  String get stationDaejeon;

  /// No description provided for @stationGimcheonGumi.
  ///
  /// In en, this message translates to:
  /// **'Gimcheon-Gumi'**
  String get stationGimcheonGumi;

  /// No description provided for @stationDongdaegu.
  ///
  /// In en, this message translates to:
  /// **'Dongdaegu'**
  String get stationDongdaegu;

  /// No description provided for @stationGyeongju.
  ///
  /// In en, this message translates to:
  /// **'Gyeongju'**
  String get stationGyeongju;

  /// No description provided for @stationUlsan.
  ///
  /// In en, this message translates to:
  /// **'Ulsan'**
  String get stationUlsan;

  /// No description provided for @stationBusan.
  ///
  /// In en, this message translates to:
  /// **'Busan'**
  String get stationBusan;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ko'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'ko':
      return AppLocalizationsKo();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
