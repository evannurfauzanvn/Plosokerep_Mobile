import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/clr.dart';

class CardAparatur extends StatelessWidget {
  final String? profile;
  final Widget image;
  final String? name;
  final String? jabatan;
  final TextStyle titlestyle =
      const TextStyle(fontWeight: FontWeight.bold, fontSize: 24);
  final TextStyle subtitlestyle = const TextStyle(fontSize: 20);
  CardAparatur({super.key, this.profile, this.name, this.jabatan})
      : image = Image.asset(profile ?? "image/aparatur.png", fit: BoxFit.cover);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: 16,right: 16,top: 10),
      color: cardAparatur,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10,top: 10,bottom: 10),
            width: 100,
            height: 100,
            clipBehavior: Clip.hardEdge,
            decoration:
                const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
            child: image,
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  name ?? "Nama Anggota",
                  style: titlestyle,
                ),
                Text(
                  jabatan ?? "Jabatan",
                  style: subtitlestyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
