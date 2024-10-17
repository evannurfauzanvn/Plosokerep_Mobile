import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/clr.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
            spreadRadius: 10,
            blurRadius: 10,
            color: Colors.grey,
            offset: Offset(0, -6))
      ]),
      child: AppBar(
        title: SizedBox(
            height: 60,
            child: Image.asset(
              "image/LOGO1.png",
              fit: BoxFit.contain,
            )),
        backgroundColor: primer,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65);
}
