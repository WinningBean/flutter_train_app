import 'package:flutter/material.dart';
import 'package:flutter_train_app/stationList/station_list_page.dart';

class StationResult extends StatefulWidget {
  const StationResult(this.isDepartureStation, this.onChanged, {super.key});

  final bool isDepartureStation;
  final ValueChanged<String?> onChanged;

  @override
  State<StationResult> createState() => _StationResultState();
}

class _StationResultState extends State<StationResult> {
  String? _stationName;
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
            child: Text(_stationName ?? '선택', style: TextStyle(fontSize: 40)),
          ),
        ],
      ),
    );
  }

  Future<void> _selectStation() async {
    final selectedStation = await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => StationListPage(_stationRoute)),
    );
    updateStationName(selectedStation);
    widget.onChanged(_stationName);
  }

  void updateStationName(String? value) {
    setState(() {
      _stationName = value;
    });
  }
}
