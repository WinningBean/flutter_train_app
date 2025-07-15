import 'package:flutter/material.dart';
import 'package:flutter_train_app/stationList/widgets/station_item.dart';

class StationListPage extends StatelessWidget {
  StationListPage(this.title, {super.key});

  final String title;
  final List<String> _stations = [
    "수서",
    "동탄",
    "평택지제",
    "천안아산",
    "오송",
    "대전",
    "김천구미",
    "동대구",
    "경주",
    "울산",
    "부산",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        children: [for (var station in _stations) StationItem(station)],
      ),
    );
  }
}
