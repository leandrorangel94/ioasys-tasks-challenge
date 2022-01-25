import 'package:flutter/material.dart';

class InputTaskWidget extends StatelessWidget {
  final TextEditingController textController;
  final void Function()? onPressed;
  final String textButtonString;
  final String? labelText;
  const InputTaskWidget({
    Key? key,
    required this.textController,
    required this.onPressed,
    required this.textButtonString,
    this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: textController,
            decoration: InputDecoration(labelText: labelText),
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(textButtonString),
        ),
      ],
    );
  }
}
