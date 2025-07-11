import 'package:flutter/material.dart';
import 'package:flutter_train_app/home/widgets/main_button.dart';
import 'package:flutter_train_app/home/widgets/stations_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('기차 예매')),
      backgroundColor: Colors.grey[200],

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [StationsBox(), SizedBox(height: 20), MainButton('좌석 선택')],
        ),
      ),
    );
  }
}
