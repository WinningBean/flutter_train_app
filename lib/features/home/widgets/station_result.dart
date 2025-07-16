import 'package:flutter/material.dart';
import 'package:flutter_train_app/core/constants/station.dart';
import 'package:flutter_train_app/features/stationList/station_list_page.dart';
import 'package:flutter_train_app/l10n/app_localizations.dart';

/// StationResult 위젯
/// 사용자가 출발역 또는 도착역을 선택할 수 있는 위젯
class StationResult extends StatefulWidget {
  const StationResult({
    super.key,
    required this.isDepartureStation,
    required this.onChanged,
    this.anotherRouteStation,
  });

  final bool isDepartureStation;
  final ValueChanged<Station?> onChanged;
  final Station? anotherRouteStation;

  @override
  State<StationResult> createState() => _StationResultState();
}

class _StationResultState extends State<StationResult> {
  Station? _station;
  late String _stationRoute;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final local = AppLocalizations.of(context)!;
    _stationRoute = widget.isDepartureStation
        ? local.departureStation
        : local.arrivalStation;
  }

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(_stationRoute, style: Theme.of(context).textTheme.labelMedium),
          GestureDetector(
            onTap: _selectStation,
            child: Text(
              _station?.localized(context) ?? local.selectStation,
              style: Theme.of(context).textTheme.displayLarge,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  /// 역 선택을 위한 페이지로 이동
  /// StationListPage로부터 선택된 역을 반환
  Future<void> _selectStation() async {
    final selectedStation = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => StationListPage(
          title: _stationRoute,
          anotherRouteStation: widget.anotherRouteStation,
        ),
      ),
    );
    _updateStationName(selectedStation);
    widget.onChanged(_station);
  }

  /// 역을 업데이트하는 메서드
  void _updateStationName(Station? value) {
    setState(() {
      _station = value;
    });
  }
}
