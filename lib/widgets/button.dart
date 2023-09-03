import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Function? onPressedFunction;

  const Button({
    Key? key,
    required this.text,
    this.onPressedFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 15,
          ),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      onPressed:
          (onPressedFunction != null) ? () => onPressedFunction!() : null,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 14,
        ),
      ),
    );
  }
}
