import 'package:flutter/material.dart';
import 'package:flutter_train_app/core/helpers/ui_helpers.dart';
import 'package:flutter_train_app/features/seat/widgets/seat_box.dart';

/// 좌석 선택 정보 위젯
/// 선택된 좌석과 선택되지 않은 좌석을 시각적으로 표시하는 정보 위젯
class SeatSelectInfo extends StatelessWidget {
  const SeatSelectInfo({super.key});

  final double _seatSize = 24;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...buildRowSpaced([
          Row(
            children: [
              ...buildRowSpaced([
                SeatBox(
                  size: _seatSize,
                  color: Theme.of(context).highlightColor,
                ),
                Text('선택됨'),
              ], 4),
            ],
          ),
          Row(
            children: [
              ...buildRowSpaced([
                SeatBox(
                  size: _seatSize,
                  color: Theme.of(context).disabledColor,
                ),
                Text('선택 안 됨'),
              ], 4),
            ],
          ),
        ], 20),
      ],
    );
  }
}
