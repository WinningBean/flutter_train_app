import 'package:flutter/material.dart';
import 'package:flutter_train_app/constants/station.dart';
import 'package:flutter_train_app/theme.dart';

class StationItem extends StatelessWidget {
  const StationItem({super.key, required this.station, this.canTap = true});

  final Station station;
  final bool canTap;

  @override
  Widget build(BuildContext context) {
    return canTap
        ? GestureDetector(
            onTap: () {
              Navigator.pop(context, station);
            },
            child: StationBox(station: station, canTap: canTap),
          )
        : StationBox(station: station, canTap: canTap);
  }
}

class StationBox extends StatelessWidget {
  const StationBox({super.key, required this.station, required this.canTap});

  final Station station;
  final bool canTap;

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>()!;

    return Container(
      height: 50,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
      decoration: BoxDecoration(
        color: canTap ? null : Theme.of(context).disabledColor,
        border: Border(
          bottom: BorderSide(color: Theme.of(context).colorScheme.outline),
        ),
      ),
      child: Text(
        station.korean,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: canTap ? null : customColors.disabledTextColor,
        ),
      ),
    );
  }
}
