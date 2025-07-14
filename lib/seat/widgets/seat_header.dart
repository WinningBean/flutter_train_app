import 'package:flutter/material.dart';

class SeatHeader extends StatelessWidget {
  const SeatHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Center(child: headerStation('test'))),
        Icon(Icons.arrow_circle_right_outlined, size: 30),
        Expanded(child: Center(child: headerStation('test'))),
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
