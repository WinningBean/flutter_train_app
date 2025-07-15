import 'package:flutter/material.dart';
import 'package:flutter_train_app/helpers/ui_helpers.dart';
import 'package:flutter_train_app/seat/models/seat_position.dart';
import 'package:flutter_train_app/seat/widgets/seat_col_list.dart';

class SeatListView extends StatelessWidget {
  const SeatListView({
    super.key,
    required this.reservationSeatCnt,
    required this.isSeatSeleted,
    required this.onSeatTap,
  });

  static const int _seatRowSize = 4;
  static const int _seatColumnSize = 20;

  static final double _seatSize = 50;
  static final double _rowPadding = 4;
  static final double _columnPadding = 8;

  final int reservationSeatCnt;
  final bool Function(SeatPosition) isSeatSeleted;
  final void Function(SeatPosition) onSeatTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...rowSpaced([
                for (int i = 0; i < SeatListView._seatRowSize; i++) ...[
                  if (i == (SeatListView._seatRowSize / 2).toInt())
                    _seatColumnInfo(context), // 가운데 부분에는 세로열 정보 출력
                  SeatColList(
                    rowIdx: i,
                    seatSize: SeatListView._seatSize,
                    seatColumnSize: SeatListView._seatColumnSize,
                    columnPadding: SeatListView._columnPadding,
                    isSeatSeleted: isSeatSeleted,
                    onSeatTap: onSeatTap,
                  ),
                ],
              ], SeatListView._rowPadding),
            ],
          ),
        ],
      ),
    );
  }

  /// 세로열 정보 (숫자)
  Widget _seatColumnInfo(BuildContext context) {
    return Column(
      children: [
        ...columnSpaced([
          Text(' '), // HACK: 알파벳과 높이 맞추기 위해 일단 구현한 방법. 나중에 다른 방법 찾아보기
          for (int i = 1; i <= SeatListView._seatColumnSize; i++)
            Container(
              height: SeatListView._seatSize,
              width: SeatListView._seatSize,
              alignment: Alignment.center,
              child: Text(
                i.toString(),
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
        ], SeatListView._columnPadding),
      ],
    );
  }
}
