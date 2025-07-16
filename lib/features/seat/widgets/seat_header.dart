import 'package:flutter/material.dart';
import 'package:flutter_train_app/core/constants/station.dart';

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

  Widget _buildHeaderStation(BuildContext context, Station station) {
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
