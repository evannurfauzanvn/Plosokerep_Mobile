import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/cntr/sdwcntr.dart';
import 'package:plosokerep_apk/resources/styltx.dart';

class IconBeranda extends StatelessWidget {
  final Widget? iconData;
  final String? iconName;
  final VoidCallback onPressed;
  final double W = 70;
  final double H = 60;
  final double hP = 5;
  final double S = 45;
  const IconBeranda(
      {super.key, this.iconData, this.iconName, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShadowContainer(
          w: W,
          h: H,
          borderRadius: BorderRadius.circular(10),
          child: IconButton(
            onPressed: onPressed,
            icon: iconData ?? Icon(Icons.error_outline),
            iconSize: S,
          ),
        ),
        SizedBox(
          height: hP,
        ),
        Text(
          iconName ?? "Icon Name",
          style: styleButtonBeranda,
        )
      ],
    );
  }
}