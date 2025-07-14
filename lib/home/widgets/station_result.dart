import 'package:flutter/material.dart';
import 'package:flutter_train_app/stationList/station_list_page.dart';

class StationResult extends StatefulWidget {
  const StationResult({
    super.key,
    required this.isDepartureStation,
    required this.onChanged,
  }) : stationRoute = isDepartureStation ? '출발역' : '도착역';

  final bool isDepartureStation;
  final String stationRoute;
  final ValueChanged<String?> onChanged;

  @override
  State<StationResult> createState() => _StationResultState();
}

class _StationResultState extends State<StationResult> {
  String? stationName;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            widget.stationRoute,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            onTap: () async {
              String? choiceStationName = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return StationListPage(widget.stationRoute);
                  },
                ),
              );
              widget.onChanged(choiceStationName);
              setState(() {
                stationName = choiceStationName;
              });
            },
            child: Text(stationName ?? '선택', style: TextStyle(fontSize: 40)),
          ),
        ],
      ),
    );
  }
}
