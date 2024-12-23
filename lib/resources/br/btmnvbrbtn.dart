import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/styltx.dart';

class BottomNavigationBarButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  const BottomNavigationBarButton({super.key, this.onPressed, this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.lightBlue),
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)))),
          onPressed: onPressed ??
              () {
                Navigator.pop(context);
              },
          child: Text(
            text ?? "konfirmasi",
            style: stylebtmbrbtn,
          )),
    );
  }
}
