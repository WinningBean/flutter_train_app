import 'package:flutter/material.dart';
import 'package:flutter_train_app/seat/widgets/seat_header.dart';
import 'package:flutter_train_app/seat/widgets/seat_choice_info.dart';
import 'package:flutter_train_app/seat/widgets/seat_list_view.dart';
import 'package:flutter_train_app/widgets/main_button.dart';

class SeatPage extends StatelessWidget {
  const SeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('좌석 선택')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SeatHeader(),
            SizedBox(height: 20),
            SeatChoiceInfo(),
            SizedBox(height: 8),
            SeatListView(),
            MainButton('예매 하기', () {
              print('예매 하기');
            }),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
