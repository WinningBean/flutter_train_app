import 'package:flutter/cupertino.dart';
import 'package:flutter_train_app/l10n/app_localizations.dart';

//// ConfirmDialog 위젯
/// 사용자가 확인 또는 취소 작업을 수행할 수 있는 dialog
class ConfirmDialog extends StatelessWidget {
  const ConfirmDialog({
    super.key,
    required this.title,
    required this.content,
    required this.onConfirm,
    this.onCancel,
    this.confirmText,
    this.cancelText,
  });
  final String title;
  final String content;
  final VoidCallback onConfirm;
  final VoidCallback? onCancel;
  final String? confirmText;
  final String? cancelText;

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return CupertinoAlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        CupertinoDialogAction(
          isDestructiveAction: true,
          onPressed: onCancel ?? () => Navigator.pop(context),
          child: Text(cancelText ?? local.cancelText),
        ),
        CupertinoDialogAction(
          isDefaultAction: true,
          onPressed: onConfirm,
          child: Text(confirmText ?? local.confirmText),
        ),
      ],
    );
  }
}
