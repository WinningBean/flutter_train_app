import 'package:flutter/material.dart';
import 'package:flutter_train_app/constants/station.dart';
import 'package:flutter_train_app/seat/seat_page.dart';
import 'package:flutter_train_app/theme.dart';
import 'package:flutter_train_app/widgets/main_button.dart';
import 'package:flutter_train_app/home/widgets/stations_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Station? _departureStation;
  Station? _arrivalStation;

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>()!;

    return Scaffold(
      appBar: AppBar(title: Text('기차 예매')),
      backgroundColor: customColors.homePageBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StationsBox(
              departureStation: _departureStation,
              arrivalStation: _arrivalStation,
              onDepartureChanged: updateDeparture,
              onArrivalChanged: updateArrival,
            ),
            SizedBox(height: 20),
            MainButton('좌석 선택', () {
              if (_departureStation != null && _arrivalStation != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        SeatPage(_departureStation!, _arrivalStation!),
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

  void updateDeparture(Station? value) {
    setState(() {
      _departureStation = value;
    });
  }

  void updateArrival(Station? value) {
    setState(() {
      _arrivalStation = value;
    });
  }
}
