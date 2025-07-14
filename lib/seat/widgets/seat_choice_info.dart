import 'package:flutter/material.dart';
import 'package:flutter_train_app/seat/widgets/seat_box.dart';

class SeatChoiceInfo extends StatelessWidget {
  const SeatChoiceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            SeatBox(24, Colors.purple),
            SizedBox(width: 4),
            Text('선택됨'),
          ],
        ),
        SizedBox(width: 20),
        Row(
          children: [
            SeatBox(24, Colors.grey[300]!),
            SizedBox(width: 4),
            Text('선택안됨'),
          ],
        ),
      ],
    );
  }
}
