import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/styltx.dart';

class ErrorMessageInternet extends StatelessWidget {
  const ErrorMessageInternet({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Error: Tidak ada Internet',
      style: subStyleSholat,
    );
  }
}
