import 'package:flutter/material.dart';

/// MainButton 위젯
/// 사용자가 클릭할 수 있는 버튼 제공
/// FilledButton을 사용하여 기본 스타일의 버튼 구현
class MainButton extends StatelessWidget {
  const MainButton(this.text, this.onChanged, {super.key});

  final String text;
  final void Function() onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: FilledButton(
        onPressed: () {
          onChanged();
        },
        child: Text(text),
      ),
    );
  }
}
