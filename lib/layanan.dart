import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/btn/btnicnnmd.dart';
import 'package:plosokerep_apk/resources/clr.dart';
import 'package:plosokerep_apk/resources/cntr/sdwcntr.dart';
import 'package:plosokerep_apk/resources/lyn/pngdn.dart';
import 'package:plosokerep_apk/resources/lyn/pngjn.dart';

class Layanan extends StatelessWidget {
  final EdgeInsetsGeometry _padding =
      const EdgeInsets.only(left: 20, right: 20);
  const Layanan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset("image/customer service.png"),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                ShadowContainer(
                  padding: _padding,
                  h: 200,
                  child: Row(
                    children: [
                      Expanded(child: Image.asset("image/Pengaduan2.png")),
                      ButtonIconNamed(
                        onpressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const PengaduanMasyarakat();
                          }));
                        },
                        image: Image.asset(
                          "image/Pengaduan.png",
                          color: sekunder,
                        ),
                        name: "Pengaduan",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                ShadowContainer(
                  padding: _padding,
                  h: 200,
                  child: Row(
                    children: [
                      Expanded(child: Image.asset("image/Pengajuan2.png")),
                      ButtonIconNamed(
                        onpressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const Pengajuan();
                          }));
                        },
                        image: Image.asset(
                          "image/Pengajuan.png",
                          color: sekunder,
                        ),
                        name: "Pengajuan",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
