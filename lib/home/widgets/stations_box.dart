import 'package:flutter/material.dart';
import 'package:flutter_train_app/home/widgets/station_result.dart';

class StationsBox extends StatelessWidget {
  const StationsBox({
    super.key,
    required this.onDepartureChanged,
    required this.onArrivalChanged,
  });

  final ValueChanged<String?> onDepartureChanged;
  final ValueChanged<String?> onArrivalChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: IntrinsicHeight(
          child: Row(
            children: [
              StationResult(
                isDepartureStation: true,
                onChanged: onDepartureChanged,
              ),
              SizedBox(
                width: 2,
                height: 50,
                child: VerticalDivider(thickness: 2, color: Colors.grey[400]),
              ),
              StationResult(
                isDepartureStation: false,
                onChanged: onArrivalChanged,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
