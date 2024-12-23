import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/clr.dart';
import 'package:plosokerep_apk/resources/styltx.dart';

class ButtonIconNamed extends StatelessWidget {
  final VoidCallback onpressed;
  final Widget image;
  final String name;
  final double? wh;
  const ButtonIconNamed({
    super.key,
    required this.onpressed,
    required this.image,
    required this.name,
    this.wh,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: wh ?? 130,
          height: wh ?? 130,
          child: ElevatedButton(
            style: ButtonStyle(
                padding: const WidgetStatePropertyAll(EdgeInsets.all(0)),
                backgroundColor: WidgetStatePropertyAll(background),
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)))),
            onPressed: onpressed,
            child: image,
          ),
        ),
        SizedBox(
          height: 30,
          child: Text(
            name,
            style: styleButtonNamed,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
