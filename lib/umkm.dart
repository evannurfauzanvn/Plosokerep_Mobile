import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/br/apbr.dart';
import 'package:plosokerep_apk/resources/clr.dart';
import 'package:plosokerep_apk/resources/styltx.dart';
import 'package:plosokerep_apk/resources/vw/vwumkm.dart';

class UMKM extends StatefulWidget {
  const UMKM({super.key});

  @override
  State<StatefulWidget> createState() => _UMKM();
}

class _UMKM extends State<UMKM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: Appbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text("UMKM Desa Plosokerep",style: styleUmkm,),
            ),
            Image.asset("image/umkm map.png"),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: ViewUMKM(),
            ),
          ],
        )
        ),
    );
  }
}
