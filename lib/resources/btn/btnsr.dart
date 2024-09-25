import 'package:flutter/material.dart';

class ButtonSilver extends StatelessWidget {
  const ButtonSilver({super.key, required this.text, required this.onpressed});
  final VoidCallback onpressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: ButtonStyle(
        minimumSize: const WidgetStatePropertyAll(Size(150, 40)),
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
          if (states.contains(WidgetState.pressed)) {
            return Colors.lightBlue;
          }
          return Colors.white30;
        }),
        foregroundColor: const WidgetStatePropertyAll(Colors.white),
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))
      ),
      child: Text(text),
    );
  }
}
