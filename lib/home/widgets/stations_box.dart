import 'package:flutter/material.dart';
import 'package:flutter_train_app/home/widgets/station_result.dart';

class StationsBox extends StatelessWidget {
  const StationsBox({super.key});

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
              Expanded(child: StationResult(true, null)),
              SizedBox(
                width: 2,
                height: 50,
                child: VerticalDivider(thickness: 2, color: Colors.grey[400]),
              ),
              Expanded(child: StationResult(false, null)),
            ],
          ),
        ),
      ),
    );
  }
}
