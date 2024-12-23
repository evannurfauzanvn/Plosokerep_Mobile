import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plosokerep_apk/resources/br/appbrtx.dart';
import 'package:plosokerep_apk/resources/br/btmnvbrbtn.dart';
import 'package:plosokerep_apk/resources/clr.dart';
import 'package:plosokerep_apk/resources/cntr/brdcntr.dart';
import 'package:plosokerep_apk/resources/frmfld/brdfrmfld.dart';

class PengaduanMasyarakat extends StatefulWidget {
  const PengaduanMasyarakat({super.key});

  @override
  State<StatefulWidget> createState() => _PengaduanMasyarakat();
}

class _PengaduanMasyarakat extends State<PengaduanMasyarakat> {
  final EdgeInsetsGeometry _paddingB = EdgeInsets.only(bottom: 10);
  final TextEditingController namalengkap = TextEditingController();
  final TextEditingController kontak = TextEditingController();
  final TextEditingController pengaduan = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBarText(
        judul: "Pengaduan",
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
                      label: "Kontak yang bisa dihubungi",
                      padding: _paddingB,
                      controller: kontak,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    ),
                    BorderFormField(
                      label: "Rincian Pengaduan",
                      controller: pengaduan,
                      minlines: 3,
                      maxlines: 7,
                    )
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarButton(text: "Kirim",),
    );
  }
}
