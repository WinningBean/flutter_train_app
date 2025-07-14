import 'package:flutter/material.dart';

class SeatBox extends StatelessWidget {
  SeatBox(this.size, this.color, {super.key});

  final double size;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
