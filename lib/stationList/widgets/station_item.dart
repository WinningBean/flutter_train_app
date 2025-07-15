import 'package:flutter/material.dart';
import 'package:flutter_train_app/constants/station.dart';

class StationItem extends StatelessWidget {
  const StationItem(this.station, {super.key});

  final Station station;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey[300]!)),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context, station);
        },
        child: Text(
          station.korean,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
