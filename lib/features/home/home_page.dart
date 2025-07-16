import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_train_app/core/constants/station.dart';
import 'package:flutter_train_app/core/helpers/ui_helpers.dart';
import 'package:flutter_train_app/core/theme/custom_colors.dart';
import 'package:flutter_train_app/core/widgets/dialogs/info_dialog.dart';
import 'package:flutter_train_app/features/home/widgets/box_container.dart';
import 'package:flutter_train_app/features/home/widgets/seat_count_box.dart';
import 'package:flutter_train_app/features/seat/seat_page.dart';
import 'package:flutter_train_app/core/widgets/main_button.dart';
import 'package:flutter_train_app/features/home/widgets/stations_box.dart';
import 'package:flutter_train_app/l10n/app_localizations.dart';

/// HomePage 위젯
/// 기차 예매 홈 페이지를 구현
/// 사용자가 출발역과 도착역을 선택하고, 예약할 좌석 수를 선택할 수 있는 UI 제공
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
    final local = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(local.trainReservation)),
      backgroundColor: customColors.homePageBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...buildColumnSpaced([
              BoxContainer(
                200,
                StationsBox(
                  departureStation: _departureStation,
                  arrivalStation: _arrivalStation,
                  onDepartureChanged: _updateDeparture,
                  onArrivalChanged: _updateArrival,
                ),
              ),
              BoxContainer(100, SeatCountBox(_updateReservationSeatCnt)),
              MainButton(local.selectSeat, _handleSeatSelection),
            ], 20),
          ],
        ),
      ),
    );
  }

  /// 좌석 선택 버튼 클릭 시 호출되는 메서드
  /// 출발역과 도착역이 모두 선택되었는지 확인하고,
  /// 선택되었다면 SeatPage로 이동하여 좌석 선택을 진행
  /// 선택되지 않았다면 정보 다이얼로그를 표시
  void _handleSeatSelection() {
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
        builder: (_) => InfoDialog(
          message: AppLocalizations.of(context)!.selectStationsWarning,
        ),
      );
    }
  }

  /// 예약할 좌석 수를 업데이트하는 메서드
  void _updateReservationSeatCnt(int value) {
    _reservationSeatCnt = value;
  }

  /// 출발역을 업데이트하는 메서드
  void _updateDeparture(Station? value) {
    setState(() {
      _departureStation = value;
    });
  }

  /// 도착역을 업데이트하는 메서드
  void _updateArrival(Station? value) {
    setState(() {
      _arrivalStation = value;
    });
  }
}
