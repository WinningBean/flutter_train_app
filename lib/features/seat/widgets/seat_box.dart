import 'package:flutter/material.dart';

/// 좌석 박스 위젯
/// 좌석의 크기와 색상을 지정할 수 있는 박스 위젯
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
