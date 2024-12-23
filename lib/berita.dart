import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/br/appbrtx.dart';
import 'package:plosokerep_apk/resources/clr.dart';

class Berita extends StatelessWidget {
  const Berita({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBarText(
        judul: "Berita",
      ),
    );
  }
}