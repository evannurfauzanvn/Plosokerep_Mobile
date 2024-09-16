import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/ws/bxws.dart';
import 'package:plosokerep_apk/resources/ws/getws.dart';
import 'package:plosokerep_apk/resources/ws/lslks.dart';

class Waktusholat extends StatefulWidget {
  const Waktusholat({super.key});

  @override
  State<StatefulWidget> createState() => _Waktusholat();
}

class _Waktusholat extends State<Waktusholat> {
  Future<PrayerTime>? prayerTime;
  String? selectedLocation;

  @override
  void initState() {
    super.initState();
    selectedLocation = locations[0];
    prayerTime = fetchPrayerTimeByLocation(selectedLocation!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: FutureBuilder<PrayerTime>(
        future: prayerTime,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (snapshot.hasData) {
            return Container(
              height: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40, bottom: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Wilayah ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                        DropdownButton<String>(
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                              alignment: AlignmentDirectional.center,
                          value: selectedLocation,
                          dropdownColor: Colors.lightBlue,
                          menuMaxHeight: 200,
                          borderRadius: BorderRadius.circular(5),
                          iconEnabledColor: Colors.white,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedLocation = newValue!;
                              prayerTime =
                                  fetchPrayerTimeByLocation(selectedLocation!);
                            });
                          },
                          items: locations
                              .map<DropdownMenuItem<String>>((String location) {
                            return DropdownMenuItem<String>(
                              value: location,
                              child: Text(location),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                  Boxwaktusholat(sholat: "Subuh", waktu: snapshot.data!.fajr),
                  const SizedBox(
                    height: 5,
                  ),
                  Boxwaktusholat(sholat: "Dhuhr", waktu: snapshot.data!.dhuhr),
                  const SizedBox(
                    height: 5,
                  ),
                  Boxwaktusholat(sholat: "Ashr", waktu: snapshot.data!.asr),
                  const SizedBox(
                    height: 5,
                  ),
                  Boxwaktusholat(
                      sholat: "Maghrib", waktu: snapshot.data!.maghrib),
                  const SizedBox(
                    height: 5,
                  ),
                  Boxwaktusholat(sholat: "Isya", waktu: snapshot.data!.isha),
                ],
              ),
            );
          } else {
            return const Text('Tidak ada data');
          }
        },
      ),
    );
  }
}
