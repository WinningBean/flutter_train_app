import 'package:flutter/material.dart';
import 'package:flutter_train_app/constants/station.dart';

class SeatHeader extends StatelessWidget {
  const SeatHeader(this.departureStation, this.arrivalStation, {super.key});

  final Station departureStation;
  final Station arrivalStation;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        headerStation(context, departureStation),
        Icon(Icons.arrow_circle_right_outlined, size: 30),
        headerStation(context, arrivalStation),
      ],
    );
  }

  Widget headerStation(BuildContext context, Station station) {
    return Expanded(
      child: Center(
        child: Text(
          station.korean,
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
    );
  }
}
