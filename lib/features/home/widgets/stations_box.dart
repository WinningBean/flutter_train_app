import 'package:flutter/material.dart';
import 'package:flutter_train_app/core/constants/station.dart';
import 'package:flutter_train_app/features/home/widgets/station_result.dart';

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
            SizedBox(
              width: 2,
              height: 50,
              child: VerticalDivider(
                thickness: 2,
                color: Theme.of(context).dividerColor,
              ),
            ),
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
