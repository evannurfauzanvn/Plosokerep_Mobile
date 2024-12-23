import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/br/appbrtx.dart';
import 'package:plosokerep_apk/resources/clr.dart';
import 'package:plosokerep_apk/resources/lyn/mnpngjn.dart';

class Pengajuan extends StatefulWidget {
  const Pengajuan({super.key});

  @override
  State<StatefulWidget> createState() => _Pengajuan();
}

class _Pengajuan extends State<Pengajuan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBarText(
        judul: "Pengajuan",
      ),
      body: Menupengajuan()
    );
  }
}
