import 'package:flutter/material.dart';
import 'package:flutter_train_app/core/constants/station.dart';

/// SeatHeader 위젯
/// 좌석 예약 화면의 상단에 출발역과 도착역을 표시하는 헤더 위젯
class SeatHeader extends StatelessWidget {
  const SeatHeader(this.departureStation, this.arrivalStation, {super.key});

  final Station departureStation;
  final Station arrivalStation;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildHeaderStation(context, departureStation),
        Icon(Icons.arrow_circle_right_outlined, size: 30),
        _buildHeaderStation(context, arrivalStation),
      ],
    );
  }

  /// 출발역 또는 도착역을 표시하는 위젯 생성
  Widget _buildHeaderStation(BuildContext context, Station station) {
    return Expanded(
      child: Center(
        child: Text(
          station.localized(context),
          style: Theme.of(context).textTheme.displayMedium,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
