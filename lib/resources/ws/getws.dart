import 'dart:convert';
import 'package:http/http.dart' as http;

Future<PrayerTime> fetchPrayerTimeByLocation(String cityName) async {
  final response = await http.get(Uri.parse(
      'https://api.aladhan.com/v1/timingsByCity?city=$cityName&country=Indonesia'));

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    return PrayerTime.fromJson(data['data']['timings']);
  } else {
    throw Exception('Failed to load prayer time');
  }
}

class PrayerTime {
  final String fajr;
  final String dhuhr;
  final String asr;
  final String maghrib;
  final String isha;

  PrayerTime(
      {required this.fajr,
      required this.dhuhr,
      required this.asr,
      required this.maghrib,
      required this.isha});

  factory PrayerTime.fromJson(Map<String, dynamic> json) {
    return PrayerTime(
      fajr: json['Fajr'],
      dhuhr: json['Dhuhr'],
      asr: json['Asr'],
      maghrib: json['Maghrib'],
      isha: json['Isha'],
    );
  }
}
