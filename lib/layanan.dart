import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/btn/btnicnnmd.dart';
import 'package:plosokerep_apk/resources/clr.dart';
import 'package:plosokerep_apk/resources/lyn/pngdn.dart';
import 'package:plosokerep_apk/resources/lyn/pngjn.dart';

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
          ButtonIconNamed(
            onpressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PengaduanMasyarakat();
              }));
            },
            image: Icon(Icons.image),
            name: "Pengaduan",
          ),
          ButtonIconNamed(
            onpressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Pengajuan();
              }));
            },
            image: Icon(Icons.image),
            name: "Pengajuan",
          ),
          const Text("UMKM")
        ],
      ),
    );
  }
}
