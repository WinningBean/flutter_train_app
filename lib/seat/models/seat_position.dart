class SeatPosition {
  const SeatPosition(this.row, this.col);

  final int row;
  final int col;

  @override
  bool operator ==(Object other) =>
      other is SeatPosition &&
      other.runtimeType == runtimeType &&
      other.row == row &&
      other.col == col;

  @override
  int get hashCode => row.hashCode ^ col.hashCode;
}
