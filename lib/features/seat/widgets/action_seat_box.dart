import 'package:flutter/material.dart';
import 'package:flutter_train_app/features/seat/models/seat_position.dart';
import 'package:flutter_train_app/features/seat/widgets/seat_box.dart';

class ActionSeatBox extends SeatBox {
  const ActionSeatBox({
    super.key,
    required super.size,
    required super.color,
    required this.isSelected,
    required this.seatPosition,
    required this.onChanged,
  });

  final bool isSelected;
  final SeatPosition seatPosition;
  final void Function(SeatPosition) onChanged;

  @override
  Color getBoxColor(BuildContext context) {
    return isSelected ? Theme.of(context).highlightColor : color;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(seatPosition),
      child: super.build(context),
    );
  }
}
