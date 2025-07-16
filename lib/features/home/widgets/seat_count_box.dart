import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_train_app/features/home/widgets/vertical_divider_box.dart';
import 'package:flutter_train_app/l10n/app_localizations.dart';

/// SeatCountBox 위젯
/// 사용자가 예약할 좌석 수를 선택할 수 있는 박스
class SeatCountBox extends StatelessWidget {
  const SeatCountBox(this.onNumChanged, {super.key});

  final ValueChanged<int> onNumChanged;

  static final seatMaxCnt = 10;

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return Center(
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  local.seatCountTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
            ),
            VerticalDividerBox(),
            Expanded(
              child: CupertinoPicker(
                itemExtent: 50,
                onSelectedItemChanged: (index) => onNumChanged(index + 1),
                children: List.generate(
                  seatMaxCnt,
                  (i) => Center(child: Text('${i + 1}')),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
