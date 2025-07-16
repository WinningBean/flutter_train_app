class SeatPosition implements Comparable<SeatPosition> {
  const SeatPosition(this.row, this.col);

  final int row;
  final int col;

  static final String seatRowStartAlphabet = 'A';
  static final int seatColStartNum = 1;

  @override
  bool operator ==(Object other) =>
      other is SeatPosition &&
      other.runtimeType == runtimeType &&
      other.row == row &&
      other.col == col;

  @override
  int get hashCode => row.hashCode ^ col.hashCode;

  @override
  String toString() {
    return '${seatColStartNum + col}-${String.fromCharCode(seatRowStartAlphabet.codeUnitAt(0) + row)}';
  }

  @override
  int compareTo(SeatPosition other) {
    if (col != other.col) {
      return col.compareTo(other.col);
    } else {
      return row.compareTo(other.row);
    }
  }
}
