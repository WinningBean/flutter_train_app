import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_train_app/constants/station.dart';
import 'package:flutter_train_app/home/widgets/box_container.dart';
import 'package:flutter_train_app/home/widgets/seat_count_box.dart';
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
  int _reservationSeatCnt = 1;
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
            BoxContainer(
              200,
              StationsBox(
                departureStation: _departureStation,
                arrivalStation: _arrivalStation,
                onDepartureChanged: updateDeparture,
                onArrivalChanged: updateArrival,
              ),
            ),
            SizedBox(height: 20),
            BoxContainer(100, SeatCountBox(updateReservationSeatCnt)),
            SizedBox(height: 20),
            MainButton('좌석 선택', () {
              if (_departureStation != null && _arrivalStation != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SeatPage(
                      reservationSeatCnt: _reservationSeatCnt,
                      departureStation: _departureStation!,
                      arrivalStation: _arrivalStation!,
                    ),
                  ),
                );
              } else {
                showCupertinoDialog(
                  context: context,
                  builder: (_) => CupertinoAlertDialog(
                    content: Text('출발역과 도착역을 모두 선택해 주세요.'),
                    actions: [
                      CupertinoDialogAction(
                        child: Text('확인'),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                );
              }
            }),
          ],
        ),
      ),
    );
  }

  void updateReservationSeatCnt(int value) {
    _reservationSeatCnt = value;
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
