import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/cntr/sdwcntr.dart';
import 'package:plosokerep_apk/resources/styltx.dart';

class ContainerMenu extends StatelessWidget {
  final String? menu;
  final double? widht;
  final VoidCallback onPressed;
  final Color color = Colors.transparent;
  const ContainerMenu(
      {super.key, this.widht, this.menu, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
      w: widht ?? MediaQuery.of(context).size.width,
      h: 40,
      borderRadius: BorderRadius.circular(10),
      margin: EdgeInsets.only(bottom: 5),
      child: ElevatedButton(
        style: ButtonStyle(
            padding:
                WidgetStatePropertyAll(EdgeInsets.only(left: 12, right: 10)),
            backgroundColor: WidgetStatePropertyAll(color),
            shadowColor: WidgetStatePropertyAll(color),
            overlayColor: WidgetStatePropertyAll(color)),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(menu ?? "Menu", style: styleContainerMenu),
            Icon(
              Icons.arrow_forward,
              color: Colors.grey[600],
            )
          ],
        ),
      ),
    );
  }
}
