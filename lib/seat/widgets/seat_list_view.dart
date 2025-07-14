import 'package:flutter/material.dart';
import 'package:flutter_train_app/helpers/ui_helpers.dart';
import 'package:flutter_train_app/seat/widgets/seat_box.dart';

class SeatListView extends StatelessWidget {
  const SeatListView({super.key});

  final String seatRowAlphabet = 'A';
  final int seatRowSize = 4;
  final int seatColumnSize = 20;

  final double seatSize = 50;
  final double rowPadding = 4;
  final double columnPadding = 8;

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
                for (int i = 0; i < seatRowSize; i++) ...[
                  if (i == (seatRowSize / 2).toInt())
                    seatColumnInfo(), // 가운데 부분에는 세로열 정보 출력
                  seatList(i),
                ],
              ], rowPadding),
            ],
          ),
        ],
      ),
    );
  }

  /// 좌석 리스트 (가로행 정보 포함)
  Widget seatList(int rowSequence) {
    return Column(
      children: [
        ...columnSpaced([
          seatRowInfo(rowSequence),
          for (int i = 0; i < seatColumnSize; i++)
            SeatBox(seatSize, Colors.grey[300]!),
        ], columnPadding),
      ],
    );
  }

  /// 가로행 정보 (알파벳)
  Widget seatRowInfo(int rowSequence) {
    return Text(
      String.fromCharCode(seatRowAlphabet.codeUnitAt(0) + rowSequence),
      style: TextStyle(fontSize: 18),
    );
  }

  /// 세로열 정보 (숫자)
  Widget seatColumnInfo() {
    return Column(
      children: [
        ...columnSpaced([
          Text(' '), // HACK: 알파벳과 높이 맞추기 위해 일단 구현한 방법. 나중에 다른 방법 찾아보기
          for (int i = 1; i <= seatColumnSize; i++)
            Container(
              height: seatSize,
              width: seatSize,
              alignment: Alignment.center,
              child: Text(i.toString(), style: TextStyle(fontSize: 18)),
            ),
        ], columnPadding),
      ],
    );
  }
}
