import 'package:flutter/cupertino.dart';

/// InfoDialog 위젯
/// 사용자가 정보를 확인할 수 있는 dialog
class InfoDialog extends StatelessWidget {
  final String message;
  final String buttonText;

  const InfoDialog({super.key, required this.message, this.buttonText = '확인'});

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      content: Text(message),
      actions: [
        CupertinoDialogAction(
          child: Text(buttonText),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
  }
}
