import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/clr.dart';

class ImageProfile extends StatelessWidget {
  final Widget? image;
  const ImageProfile({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
      width: 100,
      height: 100,
      clipBehavior: Clip.hardEdge,
      decoration:
          BoxDecoration(color: background, shape: BoxShape.circle),
      child: image ,
    );
  }
}
