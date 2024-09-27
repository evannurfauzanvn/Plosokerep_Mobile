import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/apbr/apbr.dart';
import 'package:plosokerep_apk/resources/pflds/pflds.dart';

class ProfileDesa extends StatelessWidget {
  const ProfileDesa({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Appbar(),
      body: SingleChildScrollView(
        child: Desa(),
      ),
    );
  }
}
