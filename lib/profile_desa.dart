import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/btn/btnicnnmd.dart';
import 'package:plosokerep_apk/resources/clr.dart';
import 'package:plosokerep_apk/resources/cntr/sdwcntr.dart';
import 'package:plosokerep_apk/resources/pflds/aprtds.dart';
import 'package:plosokerep_apk/resources/pflds/sjrhds.dart';
import 'package:plosokerep_apk/resources/pflds/vsmsds.dart';

class ProfileDesa extends StatelessWidget {
  final double w = 200;
  final EdgeInsetsGeometry _padding =
      const EdgeInsets.only(left: 20, right: 20);
  final Color color = Colors.blueGrey;
  const ProfileDesa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("image/depan desa.png"),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  ShadowContainer(
                    padding: _padding,
                    w: MediaQuery.of(context).size.width,
                    h: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: w,
                            child: Image.asset(
                              "image/sejarah desa.png",
                              fit: BoxFit.cover,
                            )),
                        ButtonIconNamed(
                          onpressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const SejarahDesa();
                            }));
                          },
                          image: Icon(
                            Icons.history_edu,
                            color: color,
                            size: 100,
                          ),
                          name: "Sejarah Desa",
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ShadowContainer(
                    padding: _padding,
                    w: MediaQuery.of(context).size.width,
                    h: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: w,
                            child: Image.asset(
                              "image/visimisi2.png",
                              fit: BoxFit.cover,
                            )),
                        ButtonIconNamed(
                          onpressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const VisiMisiDesa();
                            }));
                          },
                          image: Image.asset(
                            "image/visimisi.png",
                            color: color,
                          ),
                          name: "Visi Misi",
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ShadowContainer(
                    padding: _padding,
                    w: MediaQuery.of(context).size.width,
                    h: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: w,
                            child: Image.asset(
                              "image/aparatur2.png",
                              fit: BoxFit.cover,
                            )),
                        ButtonIconNamed(
                          onpressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const AparaturDesa();
                            }));
                          },
                          image: Image.asset(
                            "image/struktur.png",
                            color: color,
                          ),
                          name: "Aparatur Desa",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
