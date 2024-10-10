import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/crd/crdaprt.dart';
import 'package:plosokerep_apk/resources/listaparaturdummy.dart';

class ListViewAparatur extends StatelessWidget {
  const ListViewAparatur({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.only(bottom: 40,top: 10),
        scrollDirection: Axis.vertical,
        itemCount: aparatur.length,
        itemBuilder: (context, index) {
          final data = aparatur[index];

          return CardAparatur(
            profile: data['profile'],
            name: data['nama'],
            jabatan: data['jabatan'],
          );
        });
  }
}
