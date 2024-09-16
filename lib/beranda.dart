import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/appbar.dart';
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
                    "image/masjid2.jpg",
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
                      margin: const EdgeInsets.only(left: 16, top: 5),
                      child: const Text(
                        "Jadwal Sholat",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                            fontSize: 40),
                      )),
                  Container(
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, top: 165),
                      height: 340,
                      child: const Waktusholat()),
                ],
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
