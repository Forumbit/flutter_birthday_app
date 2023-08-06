import 'package:birthday_app/common/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class CustomShowDialogButton extends StatelessWidget {
  const CustomShowDialogButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.delete),
      onPressed: () => showDialog(
        context: context,
        barrierDismissible: true,
        builder: (_) => AlertDialog(
          content: Text(
            text,
          ),
          actions: <Widget>[
            CustomTextButton(
              text: "Нет",
              onPressed: () => Navigator.of(context).pop(),
              buttonColor: Colors.red,
            ),
            CustomTextButton(
              text: "Да",
              onPressed: onPressed,
              buttonColor: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
