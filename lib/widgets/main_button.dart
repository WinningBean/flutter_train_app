import 'package:flutter/material.dart';

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
