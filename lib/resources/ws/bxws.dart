import 'package:flutter/material.dart';

class Boxwaktusholat extends StatelessWidget {
  final String sholat;
  final String waktu;
  final TextStyle _textStyle = const TextStyle(
      color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold);
  const Boxwaktusholat({super.key, required this.sholat, required this.waktu});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.white),
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
              width: 90,
              child: Center(
                  child: Text(
                sholat,
                style: _textStyle,
              ))),
          SizedBox(
              width: 90,
              child: Center(
                  child: Text(
                waktu,
                style: _textStyle,
              )))
        ],
      ),
    );
  }
}
