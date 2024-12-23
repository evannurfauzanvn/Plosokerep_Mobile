import 'package:flutter/material.dart';
import 'package:plosokerep_apk/kebijakan.dart';
import 'package:plosokerep_apk/login.dart';
import 'package:plosokerep_apk/resources/cntr/cntrmn.dart';

class MenuProfile extends StatelessWidget {
  const MenuProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
      child: Column(
        children: [
          ContainerMenu(menu: "Akun", onPressed: () {}),
          ContainerMenu(menu: "Privasi", onPressed: () {}),
          ContainerMenu(
              menu: "Log Out",
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Login()));
              }),
          ContainerMenu(menu: "Kebijakan Privasi", onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Kebijakan()));
          })
        ],
      ),
    );
  }
}
