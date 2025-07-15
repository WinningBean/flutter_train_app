import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_train_app/home/home_page.dart';
import 'package:flutter_train_app/seat/models/seat_position.dart';
import 'package:flutter_train_app/seat/widgets/seat_header.dart';
import 'package:flutter_train_app/seat/widgets/seat_select_info.dart';
import 'package:flutter_train_app/seat/widgets/seat_list_view.dart';
import 'package:flutter_train_app/widgets/main_button.dart';

class SeatPage extends StatefulWidget {
  const SeatPage(this.departureStation, this.arrivalStation, {super.key});

  final String departureStation;
  final String arrivalStation;

  @override
  State<SeatPage> createState() => _SeatPageState();
}

class _SeatPageState extends State<SeatPage> {
  final int reservationSeatCnt = 1;
  final Set<SeatPosition> _selectedSeats = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('좌석 선택')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SeatHeader(widget.departureStation, widget.arrivalStation),
            SizedBox(height: 20),
            SeatSelectInfo(),
            SizedBox(height: 8),
            SeatListView(
              reservationSeatCnt: reservationSeatCnt,
              isSeatSeleted: _isSeatSeleted,
              onSeatTap: _toggleSeat,
            ),
            MainButton('예매 하기', () {
              if (_isAllSelected) {
                showCupertinoDialog(
                  context: context,
                  builder: (context) {
                    return CupertinoAlertDialog(
                      title: Text('예매 하시겠습니까?'),
                      content: Text('예약 좌석'),
                      actions: [
                        CupertinoDialogAction(
                          isDestructiveAction: true,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('취소'),
                        ),
                        CupertinoDialogAction(
                          isDefaultAction: true,
                          onPressed: () {
                            Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(builder: (_) => HomePage()),
                              (route) => false,
                            );
                          },
                          child: Text('확인'),
                        ),
                      ],
                    );
                  },
                );
              }
            }),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  bool _isSeatSeleted(SeatPosition seatPosition) {
    return _selectedSeats.contains(seatPosition);
  }

  void _toggleSeat(SeatPosition seatPosition) {
    setState(() {
      if (_isSeatSeleted(seatPosition)) {
        _selectedSeats.remove(seatPosition);
      } else {
        if (!_isAllSelected) {
          _selectedSeats.add(seatPosition);
        }
      }
    });
  }

  bool get _isAllSelected => reservationSeatCnt == _selectedSeats.length;
}
