import 'package:flutter/material.dart';
import 'package:flutter_train_app/constants/station.dart';
import 'package:flutter_train_app/stationList/station_list_page.dart';

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
  late final String _stationRoute;

  @override
  void initState() {
    super.initState();
    _stationRoute = widget.isDepartureStation ? '출발역' : '도착역';
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            _stationRoute,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            onTap: _selectStation,
            child: Text(
              _station?.korean ?? '선택',
              style: TextStyle(fontSize: 40),
            ),
          ),
        ],
      ),
    );
  }

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
    updateStationName(selectedStation);
    widget.onChanged(_station);
  }

  void updateStationName(Station? value) {
    setState(() {
      _station = value;
    });
  }
}
