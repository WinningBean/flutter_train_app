import 'package:flutter/material.dart';
import 'package:flutter_train_app/constants/station.dart';
import 'package:flutter_train_app/stationList/widgets/station_item.dart';

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
            .where((station) => station != anotherRouteStation)
            .map((station) => StationItem(station))
            .toList(),
      ),
    );
  }
}
