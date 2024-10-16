import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/clr.dart';

class AppBarText extends StatelessWidget implements PreferredSizeWidget {
  final String? judul;
  const AppBarText({super.key, this.judul});

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
        centerTitle: true,
        backgroundColor: background,
        title: Text(
          judul ?? "Judul",
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65);
}
