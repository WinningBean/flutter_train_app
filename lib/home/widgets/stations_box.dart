import 'package:flutter/material.dart';
import 'package:flutter_train_app/constants/station.dart';
import 'package:flutter_train_app/home/widgets/station_result.dart';
import 'package:flutter_train_app/theme.dart';

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
    final customColors = Theme.of(context).extension<CustomColors>()!;

    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: customColors.stationBoxColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
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
      ),
    );
  }
}
