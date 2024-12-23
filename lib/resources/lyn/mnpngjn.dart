import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/clr.dart';
import 'package:plosokerep_apk/resources/cntr/cntrmn.dart';
import 'package:plosokerep_apk/resources/lyn/pngjn/kk.dart';
import 'package:plosokerep_apk/resources/lyn/pngjn/ktp.dart';
import 'package:plosokerep_apk/resources/lyn/pngjn/srtizn.dart';

class Menupengajuan extends StatefulWidget {
  const Menupengajuan({super.key});

  @override
  State<StatefulWidget> createState() => _Menupengajuan();
}

class _Menupengajuan extends State<Menupengajuan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        body: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ContainerMenu(
                  menu: "KTP",
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => KTP()));
                  }),
              ContainerMenu(
                  menu: "KK",
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => KK()));
                  }),
              ContainerMenu(
                  menu: "Surat Izin",
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => SuratIzin()));
                  }),
            ],
          ),
        ));
  }
}
