import 'package:flutter/material.dart';
import 'package:flutter_train_app/core/constants/station.dart';
import 'package:flutter_train_app/features/home/widgets/station_result.dart';
import 'package:flutter_train_app/features/home/widgets/vertical_divider_box.dart';

/// StationsBox 위젯
/// 사용자가 출발역과 도착역을 선택할 수 있는 박스
class StationsBox extends StatelessWidget {
  const StationsBox({
    super.key,
    required this.departureStation,
    required this.arrivalStation,
    required this.onDepartureChanged,
    required this.onArrivalChanged,
  });

  final Station? departureStation;
  final Station? arrivalStation;
  final ValueChanged<Station?> onDepartureChanged;
  final ValueChanged<Station?> onArrivalChanged;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IntrinsicHeight(
        child: Row(
          children: [
            StationResult(
              isDepartureStation: true,
              onChanged: onDepartureChanged,
              anotherRouteStation: arrivalStation,
            ),
            VerticalDividerBox(),
            StationResult(
              isDepartureStation: false,
              onChanged: onArrivalChanged,
              anotherRouteStation: departureStation,
            ),
          ],
        ),
      ),
    );
  }
}
