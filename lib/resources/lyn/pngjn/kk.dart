import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plosokerep_apk/resources/br/appbrtx.dart';
import 'package:plosokerep_apk/resources/clr.dart';
import 'package:plosokerep_apk/resources/cntr/brdcntr.dart';
import 'package:plosokerep_apk/resources/frmfld/brdfrmfld.dart';
import 'package:plosokerep_apk/resources/pckr/pckr.dart';

class KK extends StatefulWidget {
  const KK({super.key});

  @override
  State<StatefulWidget> createState() => _KK();
}

class _KK extends State<KK> {
  final EdgeInsetsGeometry _paddingB = EdgeInsets.only(bottom: 10);
  final TextEditingController namalengkap = TextEditingController();
  final TextEditingController nik = TextEditingController();
  final TextEditingController nohp = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBarText(
        judul: "Kartu Keluarga",
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                SizedBox(width: 90, child: Image.asset("image/logo.png")),
                BorderContainer(
                    child: Column(
                  children: [
                    BorderFormField(
                        label: "Nama Lengkap",
                        padding: _paddingB,
                        controller: namalengkap,),
                    BorderFormField(
                      label: "NIK",
                      padding: _paddingB,
                      controller: nik,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    ),
                    BorderFormField(
                      label: "Nomor Handphone",
                      controller: nohp,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    ),
                    Attachment()
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
