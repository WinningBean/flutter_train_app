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
import 'package:flutter_train_app/l10n/app_localizations.dart';

/// SeatPage 위젯
/// 좌석 선택 페이지를 구현
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
    final local = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(local.selectSeat)),
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
            MainButton(local.bookSeats, () {
              if (_isAllSelected) {
                showCupertinoDialog(
                  context: context,
                  builder: (context) {
                    return ConfirmDialog(
                      title: local.confirmBookingTitle,
                      content: local.selectedSeatsLabel(_sortedSeatsText),
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
                    message: local.selectSeatWarning(widget.reservationSeatCnt),
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

  /// 선택된 좌석 번호를 정렬하여 문자열로 반환
  String get _sortedSeatsText =>
      (_selectedSeats.toList()..sort()).map((e) => e.toString()).join('\n');

  /// 모든 좌석이 선택되었는지 여부
  bool get _isAllSelected => widget.reservationSeatCnt == _selectedSeats.length;

  /// 좌석이 선택되었는지 확인하는 메서드
  bool _isSeatSeleted(SeatPosition seatPosition) {
    return _selectedSeats.contains(seatPosition);
  }

  /// 좌석을 선택하거나 선택 해제하는 메서드
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
