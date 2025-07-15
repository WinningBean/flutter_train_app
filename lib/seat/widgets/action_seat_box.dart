import 'package:flutter/material.dart';
import 'package:flutter_train_app/seat/models/seat_position.dart';
import 'package:flutter_train_app/seat/widgets/seat_box.dart';

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
  Color get boxColor {
    return isSelected ? Colors.purple : color;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(seatPosition),
      child: super.build(context),
    );
  }
}
