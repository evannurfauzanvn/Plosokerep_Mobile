import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:plosokerep_apk/resources/ws/bxws.dart';
import 'package:plosokerep_apk/resources/ws/getws.dart';

Future<PrayerTime> fetchPrayerTime() async {
  final response = await http.get(Uri.parse(
      'https://api.aladhan.com/v1/timingsByCity?city=Jakarta&country=Indonesia'));

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    return PrayerTime.fromJson(data['data']['timings']);
  } else {
    throw Exception('Failed to load prayer time');
  }
}

class Waktusholat extends StatefulWidget {
  const Waktusholat({super.key});

  @override
  State<StatefulWidget> createState() => _Waktusholat();
}

class _Waktusholat extends State<Waktusholat> {
  late Future<PrayerTime> futurePrayerTime;

  @override
  void initState() {
    super.initState();
    futurePrayerTime = fetchPrayerTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: FutureBuilder<PrayerTime>(
        future: futurePrayerTime,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (snapshot.hasData) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Boxwaktusholat(sholat: "Subuh", waktu: snapshot.data!.fajr),
                  const SizedBox(height: 5,),
                  Boxwaktusholat(sholat: "Dhuhr", waktu: snapshot.data!.dhuhr),
                  const SizedBox(height: 5,),
                  Boxwaktusholat(sholat: "Ashr", waktu: snapshot.data!.asr),
                  const SizedBox(height: 5,),
                  Boxwaktusholat(sholat: "Maghrib", waktu: snapshot.data!.maghrib),
                  const SizedBox(height: 5,),
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
