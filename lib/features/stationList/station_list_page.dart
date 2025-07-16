import 'package:flutter/material.dart';
import 'package:flutter_train_app/core/constants/station.dart';
import 'package:flutter_train_app/features/stationList/widgets/selectable_station_tile.dart';

class StationListPage extends StatelessWidget {
  const StationListPage({
    super.key,
    required this.title,
    this.anotherRouteStation,
  });

  final String title;
  final Station? anotherRouteStation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        children: Station.values
            .map(
              (station) => SelectableStationTile(
                station: station,
                canTap: station != anotherRouteStation,
              ),
            )
            .toList(),
      ),
    );
  }
}
