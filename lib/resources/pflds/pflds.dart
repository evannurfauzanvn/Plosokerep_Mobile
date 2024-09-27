import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/pflds/lstpflds.dart';

class Desa extends StatelessWidget {
  final TextStyle judul = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  final TextStyle isi = const TextStyle(
    fontSize: 14
  );
  const Desa({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(left: 16,right: 16,bottom: 16),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text("Sejarah Desa",textAlign: TextAlign.center,style: judul,),
          Text(sejarahdesa[0],textAlign: TextAlign.justify,style: isi,),
          Text(sejarahdesa[1],textAlign: TextAlign.justify,style: isi,),
          Text(sejarahdesa[2],textAlign: TextAlign.justify,style: isi,),
          Text(sejarahdesa[3],textAlign: TextAlign.justify,style: isi,),
        ],
      ),
    );
  }
}