import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/clr.dart';
import 'package:plosokerep_apk/resources/cntr/cntrimgpfl.dart';
import 'package:plosokerep_apk/resources/cntr/sdwcntr.dart';

class ProfileBox extends StatelessWidget {
  final TextStyle stylenama =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final TextStyle stylenomor = TextStyle(fontSize: 16);
  ProfileBox({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
      w: MediaQuery.of(context).size.width,
      h: 180,
      colors: primer,
      child: Padding(
        padding: const EdgeInsets.only(right: 30,left: 20),
        child: Center(
            child: Row(
          children: [
            ImageProfile(
              image: Icon(Icons.person),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Permisalan Bae",
                    style: stylenama,
                  ),
                  Text(
                    "8012233445566",
                    style: stylenomor,
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
