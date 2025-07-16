import 'package:flutter/material.dart';
import 'package:flutter_train_app/l10n/app_localizations.dart';

/// 역 상수
enum Station {
  suseo,
  dongtan,
  pyeongtaekJije,
  cheonanAsan,
  osong,
  daejeon,
  gimcheonGumi,
  dongdaegu,
  gyeongju,
  ulsan,
  busan,
}

/// 역 상수 확장
extension StationNameLocalized on Station {
  String localized(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return switch (this) {
      Station.suseo => l10n.stationSuseo,
      Station.dongtan => l10n.stationDongtan,
      Station.pyeongtaekJije => l10n.stationPyeongtaekJije,
      Station.cheonanAsan => l10n.stationCheonanAsan,
      Station.osong => l10n.stationOsong,
      Station.daejeon => l10n.stationDaejeon,
      Station.gimcheonGumi => l10n.stationGimcheonGumi,
      Station.dongdaegu => l10n.stationDongdaegu,
      Station.gyeongju => l10n.stationGyeongju,
      Station.ulsan => l10n.stationUlsan,
      Station.busan => l10n.stationBusan,
    };
  }
}
