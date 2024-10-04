import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/clr.dart';

class Layanan extends StatelessWidget {
  const Layanan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset("image/customer service.png"),
          const Text("Pengaduan"),
          const Text("Pengajuan"),
          const Text("UMKM")
        ],
      ),
    );
  }
}
