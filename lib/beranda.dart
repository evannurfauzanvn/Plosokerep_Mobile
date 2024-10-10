import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/br/apbr.dart';
import 'package:plosokerep_apk/resources/clr.dart';
import 'package:plosokerep_apk/resources/cntr/sdwcntr.dart';
import 'package:plosokerep_apk/resources/vw/vwicnbrnd.dart';
import 'package:plosokerep_apk/resources/adds/adds.dart';
import 'package:plosokerep_apk/resources/ws/ws.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<StatefulWidget> createState() => _Beranda();
}

class _Beranda extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: const Appbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 340,
              width: double.infinity,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    "image/masjid.jpg",
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.transparent, Colors.black],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: const Column(
                        children: [
                          Text(
                            "Jadwal Sholat",
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                                fontSize: 40),
                          ),
                        ],
                      )),
                  const Waktusholat(),
                ],
              ),
            ),
            const SizedBox(
              child: ViewIconBeranda(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16,right: 16,bottom: 10),
              child: ShadowContainer(
                h: 130,
                w: MediaQuery.of(context).size.width,
                child: const Iklan(),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.amber,
              child: Container(
                height: 1000,
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
