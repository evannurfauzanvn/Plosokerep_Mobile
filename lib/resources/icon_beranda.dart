import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/cntr/sdwcntr.dart';

class IconBeranda extends StatelessWidget {
  final double W = 70;
  final double H = 60;
  final double hP = 5;
  final double S = 45;
  final TextStyle textStyle = const TextStyle(
      fontSize: 12, fontWeight: FontWeight.w900, color: Colors.black);
  const IconBeranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10, top: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              ShadowContainer(
                w: W,
                h: H,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.donut_small),
                  iconSize: S,
                ),
              ),
              SizedBox(
                height: hP,
              ),
              Text(
                "Data Desa",
                style: textStyle,
              )
            ],
          ),
          Column(
            children: [
              ShadowContainer(
                w: W,
                h: H,
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset("image/map.png"),
                  iconSize: S,
                ),
              ),
              SizedBox(
                height: hP,
              ),
              Text(
                "Peta Desa",
                style: textStyle,
              )
            ],
          ),
          Column(
            children: [
              ShadowContainer(
                w: W,
                h: H,
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset("image/aparatur.png"),
                  iconSize: S,
                ),
              ),
              SizedBox(
                height: hP,
              ),
              Text(
                "Aparatur",
                style: textStyle,
              )
            ],
          ),
          Column(
            children: [
              ShadowContainer(
                w: W,
                h: H,
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset("image/info desa.png"),
                  iconSize: S,
                ),
              ),
              SizedBox(
                height: hP,
              ),
              Text(
                "Info Desa",
                style: textStyle,
              )
            ],
          ),
          Column(
            children: [
              ShadowContainer(
                w: W,
                h: H,
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset("image/kontak desa.png"),
                  iconSize: S,
                ),
              ),
              SizedBox(
                height: hP,
              ),
              Text(
                "Kontak",
                style: textStyle,
              )
            ],
          ),
        ],
      ),
    );
  }
}
