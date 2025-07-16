import 'package:flutter/material.dart';

/// VerticalDividerBox 위젯
/// 세로 방향의 구분선을 박스 형태로 표시하는 위젯
class VerticalDividerBox extends StatelessWidget {
  const VerticalDividerBox({super.key, this.height = 50, this.thickness = 2});

  final double height;
  final double thickness;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: thickness,
      child: VerticalDivider(
        thickness: thickness,
        color: Theme.of(context).dividerColor,
      ),
    );
  }
}
