import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_train_app/core/constants/station.dart';
import 'package:flutter_train_app/core/widgets/dialogs/confirm_dialog.dart';
import 'package:flutter_train_app/core/widgets/dialogs/info_dialog.dart';
import 'package:flutter_train_app/features/home/home_page.dart';
import 'package:flutter_train_app/features/seat/models/seat_position.dart';
import 'package:flutter_train_app/features/seat/widgets/seat_header.dart';
import 'package:flutter_train_app/features/seat/widgets/seat_select_info.dart';
import 'package:flutter_train_app/features/seat/widgets/seat_list_view.dart';
import 'package:flutter_train_app/core/widgets/main_button.dart';

class SeatPage extends StatefulWidget {
  const SeatPage({
    super.key,
    required this.reservationSeatCnt,
    required this.departureStation,
    required this.arrivalStation,
  });

  final int reservationSeatCnt;
  final Station departureStation;
  final Station arrivalStation;

  @override
  State<SeatPage> createState() => _SeatPageState();
}

class _SeatPageState extends State<SeatPage> {
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
              reservationSeatCnt: widget.reservationSeatCnt,
              isSeatSeleted: _isSeatSeleted,
              onSeatTap: _toggleSeat,
            ),
            MainButton('예매 하기', () {
              if (_isAllSelected) {
                showCupertinoDialog(
                  context: context,
                  builder: (context) {
                    return ConfirmDialog(
                      title: '예매 하시겠습니까?',
                      content: '좌석 번호\n$_sortedSeatsText',
                      onConfirm: () {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (_) => HomePage()),
                          (route) => false,
                        );
                      },
                    );
                  },
                );
              } else {
                showCupertinoDialog(
                  context: context,
                  builder: (_) => InfoDialog(
                    message: '${widget.reservationSeatCnt}인 좌석 모두 선택해 주세요.',
                  ),
                );
              }
            }),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  String get _sortedSeatsText =>
      (_selectedSeats.toList()..sort()).map((e) => e.toString()).join('\n');
  bool get _isAllSelected => widget.reservationSeatCnt == _selectedSeats.length;

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
}
