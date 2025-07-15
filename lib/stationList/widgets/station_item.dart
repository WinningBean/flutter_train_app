import 'package:flutter/material.dart';
import 'package:flutter_train_app/constants/station.dart';

class StationItem extends StatelessWidget {
  const StationItem({super.key, required this.station, this.canTap = true});

  final Station station;
  final bool canTap;

  @override
  Widget build(BuildContext context) {
    return canTap
        ? GestureDetector(
            onTap: () {
              Navigator.pop(context, station);
            },
            child: StationBox(station: station, canTap: canTap),
          )
        : StationBox(station: station, canTap: canTap);
  }
}

class StationBox extends StatelessWidget {
  const StationBox({super.key, required this.station, required this.canTap});

  final Station station;
  final bool canTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
      decoration: BoxDecoration(
        color: canTap ? null : Colors.grey[200],
        border: Border(bottom: BorderSide(color: Colors.grey[300]!)),
      ),
      child: Text(
        station.korean,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: canTap ? null : Colors.grey[400],
        ),
      ),
    );
  }
}
