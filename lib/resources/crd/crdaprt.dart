import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/clr.dart';
import 'package:plosokerep_apk/resources/cntr/cntrimgpfl.dart';

class CardAparatur extends StatelessWidget {
  final String? profile;
  final Widget image;
  final String? name;
  final String? jabatan;
  final TextStyle namestyle =
      const TextStyle(fontWeight: FontWeight.bold, fontSize: 24);
  final TextStyle jabatanstyle = const TextStyle(fontSize: 20);
  CardAparatur({super.key, this.profile, this.name, this.jabatan})
      : image = Image.asset(profile ?? "image/aparatur.png", fit: BoxFit.cover);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: 16, right: 16, top: 10),
      color: primer,
      child: Row(
        children: [
          ImageProfile(
            image: image,
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  name ?? "Nama Anggota",
                  style: namestyle,
                ),
                Text(
                  jabatan ?? "Jabatan",
                  style: jabatanstyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
