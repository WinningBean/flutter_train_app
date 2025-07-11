import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_train_app/stationList/station_list_page.dart';

class StationResult extends StatefulWidget {
  StationResult(this.isStartStation, this.stationName, {super.key})
    : stationRoute = isStartStation ? '출발역' : '도착역';

  bool isStartStation;
  String stationRoute;
  String? stationName;

  @override
  State<StationResult> createState() => _StationResultState();
}

class _StationResultState extends State<StationResult> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
            setState(() {
              widget.stationName = choiceStationName;
            });
          },
          child: Text(
            widget.stationName ?? '선택',
            style: TextStyle(fontSize: 40),
          ),
        ),
      ],
    );
  }
}
