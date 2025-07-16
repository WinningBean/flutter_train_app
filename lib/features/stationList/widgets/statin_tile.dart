import 'package:flutter/material.dart';
import 'package:flutter_train_app/core/constants/station.dart';
import 'package:flutter_train_app/core/theme/custom_colors.dart';

class StationTile extends StatelessWidget {
  const StationTile({
    super.key,
    required this.station,
    this.isDisabled = false,
  });

  final Station station;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>()!;

    return Container(
      height: 50,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
      decoration: BoxDecoration(
        color: isDisabled ? Theme.of(context).disabledColor : null,
        border: Border(
          bottom: BorderSide(color: Theme.of(context).colorScheme.outline),
        ),
      ),
      child: Text(
        station.korean,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: isDisabled ? customColors.disabledTextColor : null,
        ),
      ),
    );
  }
}
