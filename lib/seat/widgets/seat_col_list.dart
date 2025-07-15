import 'package:flutter/material.dart';
import 'package:flutter_train_app/helpers/ui_helpers.dart';
import 'package:flutter_train_app/seat/models/seat_position.dart';
import 'package:flutter_train_app/seat/widgets/action_seat_box.dart';

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
        ...columnSpaced([
          _seatRowInfo(rowIdx),
          ..._seatBoxs(rowIdx),
        ], columnPadding),
      ],
    );
  }

  /// 좌석 박스
  List<Widget> _seatBoxs(int rowIdx) {
    return [
      for (int colIdx = 0; colIdx < seatColumnSize; colIdx++)
        () {
          final SeatPosition seatPosition = SeatPosition(rowIdx, colIdx);
          return ActionSeatBox(
            size: seatSize,
            color: Colors.grey[300]!,
            seatPosition: seatPosition,
            isSelected: isSeatSeleted(seatPosition),
            onChanged: onSeatTap,
          );
        }(),
    ];
  }

  /// 가로행 정보 (알파벳)
  Widget _seatRowInfo(int rowIdx) {
    return Text(
      String.fromCharCode(
        SeatPosition.seatRowStartAlphabet.codeUnitAt(0) + rowIdx,
      ),
      style: TextStyle(fontSize: 18),
    );
  }
}
