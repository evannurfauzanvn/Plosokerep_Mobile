import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/cntr/sdwcntr.dart';

class IconBeranda extends StatelessWidget {
  final Widget? iconData;
  final String? iconName;
  final VoidCallback onPressed;
  final double W = 70;
  final double H = 60;
  final double hP = 5;
  final double S = 45;
  final TextStyle textStyle = const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w900,
      color: Colors.black,
      shadows: [
        Shadow(color: Colors.grey, blurRadius: 2, offset: Offset(-3, 3))
      ]);
  const IconBeranda(
      {super.key, this.iconData, this.iconName, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShadowContainer(
          w: W,
          h: H,
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
          style: textStyle,
        )
      ],
    );
  }
}