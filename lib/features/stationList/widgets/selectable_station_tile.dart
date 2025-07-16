import 'package:flutter/material.dart';
import 'package:flutter_train_app/core/constants/station.dart';
import 'package:flutter_train_app/features/stationList/widgets/statin_tile.dart';

class SelectableStationTile extends StatelessWidget {
  const SelectableStationTile({
    super.key,
    required this.station,
    this.canTap = true,
  });

  final Station station;
  final bool canTap;

  @override
  Widget build(BuildContext context) {
    return canTap
        ? GestureDetector(
            onTap: () {
              Navigator.pop(context, station);
            },
            child: StationTile(station: station),
          )
        : StationTile(station: station, isDisabled: !canTap);
  }
}
