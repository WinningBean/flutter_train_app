import 'package:flutter/material.dart';

class SeatHeader extends StatelessWidget {
  const SeatHeader(this.departureStation, this.arrivalStation, {super.key});

  final String departureStation;
  final String arrivalStation;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Center(child: headerStation(departureStation))),
        Icon(Icons.arrow_circle_right_outlined, size: 30),
        Expanded(child: Center(child: headerStation(arrivalStation))),
      ],
    );
  }

  Widget headerStation(String name) {
    return Text(
      name,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.purple,
        fontSize: 30,
      ),
    );
  }
}
