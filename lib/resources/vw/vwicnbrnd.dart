import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/btn/btnicnbrnd.dart';
import 'package:plosokerep_apk/resources/pflds/aprtds.dart';

class ViewIconBeranda extends StatelessWidget {
  const ViewIconBeranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10, top: 16, left: 16, right: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconBeranda(
            iconData: Icon(Icons.donut_small),
            iconName: "Data Desa",
            onPressed: () {},
          ),
          IconBeranda(
              iconData: Image.asset("image/map.png"),
              iconName: "Peta Desa",
              onPressed: () {}),
          IconBeranda(
              iconData: Image.asset("image/aparatur.png"),
              iconName: "Aparatur",
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AparaturDesa();
                }));
              }),
          IconBeranda(
              iconData: Image.asset("image/info desa.png"),
              iconName: "Info Desa",
              onPressed: () {}),
          IconBeranda(
              iconData: Image.asset("image/kontak desa.png"),
              iconName: "Kontak",
              onPressed: () {}),
        ],
      ),
    );
  }
}
