import 'package:flutter/material.dart';

class ButtonIconNamed extends StatelessWidget {
  final VoidCallback onpressed;
  final Widget image;
  final String name;
  const ButtonIconNamed(
      {super.key,
      required this.onpressed,
      required this.image,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      height: 130,
      child: ElevatedButton(
        clipBehavior: Clip.none,
        style: ButtonStyle(
            padding: const WidgetStatePropertyAll(EdgeInsets.all(0)),
            backgroundColor: const WidgetStatePropertyAll(Colors.white),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)))),
        onPressed: onpressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              child: image
            ),
            SizedBox(
              width: 180,
              height: 30,
              child: Text(
                name,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
