import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/br/appbrtx.dart';
import 'package:plosokerep_apk/resources/clr.dart';

class Kebijakan extends StatelessWidget {
  const Kebijakan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBarText(
        judul: "Kebijakan",
      ),
    );
  }
}