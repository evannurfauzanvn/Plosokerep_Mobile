import 'package:flutter/material.dart';

class AppbarProfileDesa extends StatelessWidget implements PreferredSizeWidget {
  final String? judul;
  const AppbarProfileDesa({super.key, this.judul});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: Container(
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
                spreadRadius: 10,
                blurRadius: 10,
                color: Colors.grey,
                offset: Offset(0, -6))
          ]),
          child: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            title: Text(
              judul ?? "Judul",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65);
}
