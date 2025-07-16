import 'package:flutter/material.dart';
import 'package:flutter_train_app/core/helpers/ui_helpers.dart';
import 'package:flutter_train_app/features/seat/models/seat_position.dart';
import 'package:flutter_train_app/features/seat/widgets/action_seat_box.dart';

/// 좌석 열 리스트 위젯
/// 좌석의 행(row) 정보를 표시하고, 각 좌석 박스를 포함하는 열
class SeatColList extends StatelessWidget {
  const SeatColList({
    super.key,
    required this.rowIdx,
    required this.seatSize,
    required this.seatColumnSize,
    required this.columnPadding,
    required this.isSeatSeleted,
    required this.onSeatTap,
  });

  final int rowIdx;
  final double seatSize;
  final int seatColumnSize;
  final double columnPadding;
  final bool Function(SeatPosition) isSeatSeleted;
  final void Function(SeatPosition) onSeatTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...buildColumnSpaced([
          _buildSeatRowInfo(context, rowIdx),
          ..._buildSeatBoxs(context, rowIdx),
        ], columnPadding),
      ],
    );
  }

  /// 좌석 박스 리스트 생성
  List<Widget> _buildSeatBoxs(BuildContext context, int rowIdx) {
    return [
      for (int colIdx = 0; colIdx < seatColumnSize; colIdx++)
        () {
          final SeatPosition seatPosition = SeatPosition(rowIdx, colIdx);
          return ActionSeatBox(
            size: seatSize,
            color: Theme.of(context).disabledColor,
            seatPosition: seatPosition,
            isSelected: isSeatSeleted(seatPosition),
            onChanged: onSeatTap,
          );
        }(),
    ];
  }

  /// 좌석 행(row) 정보 위젯 생성 (알파벳)
  Widget _buildSeatRowInfo(BuildContext context, int rowIdx) {
    return Text(
      String.fromCharCode(
        SeatPosition.seatRowStartAlphabet.codeUnitAt(0) + rowIdx,
      ),
      style: Theme.of(context).textTheme.labelLarge,
    );
  }
}
