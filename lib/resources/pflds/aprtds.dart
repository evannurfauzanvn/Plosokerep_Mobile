import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/br/appbrpflds.dart';
import 'package:plosokerep_apk/resources/clr.dart';
import 'package:plosokerep_apk/resources/lv/lvaprt.dart';

class AparaturDesa extends StatelessWidget {
  const AparaturDesa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: const AppbarProfileDesa(
        judul: "Aparatur Desa",
      ),
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: const PageViewAparatur()),
    );
  }
}
