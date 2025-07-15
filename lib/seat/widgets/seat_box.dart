import 'package:flutter/material.dart';

class SeatBox extends StatelessWidget {
  const SeatBox({super.key, required this.size, required this.color});

  final double size;
  final Color color;

  @protected
  Color get boxColor => color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
