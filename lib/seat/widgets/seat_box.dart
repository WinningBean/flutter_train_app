import 'package:flutter/material.dart';

class SeatBox extends StatelessWidget {
  const SeatBox({super.key, required this.size, required this.color});

  final double size;
  final Color color;

  @protected
  Color getBoxColor(BuildContext context) => color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: getBoxColor(context),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
