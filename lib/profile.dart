import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/clr.dart';
import 'package:plosokerep_apk/resources/pfl/mnpfl.dart';
import 'package:plosokerep_apk/resources/pfl/pfl.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<StatefulWidget> createState() => _Profile();
}

class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Column(
          children: [ProfileBox(), MenuProfile()],
        ),
      ),
    );
  }
}
