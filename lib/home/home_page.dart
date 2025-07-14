import 'package:flutter/material.dart';
import 'package:flutter_train_app/seat/seat_page.dart';
import 'package:flutter_train_app/widgets/main_button.dart';
import 'package:flutter_train_app/home/widgets/stations_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? departureStation;
  String? arrivalStation;

  void updateDeparture(String? value) {
    setState(() {
      departureStation = value;
    });
  }

  void updateArrival(String? value) {
    setState(() {
      arrivalStation = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('기차 예매')),
      backgroundColor: Colors.grey[200],

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StationsBox(
              onDepartureChanged: updateDeparture,
              onArrivalChanged: updateArrival,
            ),
            SizedBox(height: 20),
            MainButton('좌석 선택', () {
              if (departureStation != null && arrivalStation != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SeatPage(departureStation!, arrivalStation!);
                    },
                  ),
                );
              } else {
                print('미선택');
                // TODO: 미선택 시 화면 구현
              }
            }),
          ],
        ),
      ),
    );
  }
}
