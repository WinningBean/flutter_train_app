import 'package:flutter/material.dart';
import 'package:flutter_train_app/core/theme/custom_colors.dart';

/// BoxContainer 위젯
/// 사용자가 정의한 높이를 가지며, 자식 위젯을 포함하는 컨테이너
class BoxContainer extends StatelessWidget {
  const BoxContainer(this.height, this.childWidget, {super.key});

  final double height;
  final Widget childWidget;

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>()!;

    return Container(
      height: height,
      decoration: BoxDecoration(
        color: customColors.stationBoxColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: childWidget,
    );
  }
}
