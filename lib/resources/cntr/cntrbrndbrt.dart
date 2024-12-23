import 'package:flutter/material.dart';
import 'package:plosokerep_apk/berita.dart';
import 'package:plosokerep_apk/resources/clr.dart';
import 'package:plosokerep_apk/resources/cntr/sdwcntr.dart';
import 'package:plosokerep_apk/resources/styltx.dart';

class ContainerRekBeritaDashboard extends StatelessWidget {
  final double iconsize = 20;
  final TextStyle iconstyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.black
  );
  final VoidCallback? onPressed ;
  ContainerRekBeritaDashboard({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(background),
            padding: WidgetStatePropertyAll(EdgeInsets.all(8)),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0)
            ))
          ),
          onPressed: onPressed ?? () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Berita();
            }));
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: 120,
                  height: 100,
                  child: Image.asset("image/aparatur.png")),
              SizedBox(
                height: 10,
                width: 15,
              ),
              Expanded(
                child: SizedBox(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: "Aparatur desa\n",
                          style: styleJudul,
                          children: [
                            TextSpan(
                              text: "12 November 2024",
                              style: styleTanggal
                            )
                          ]
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.thumb_up,size: iconsize,color: Colors.black),
                          Text("0",style: iconstyle,),
                          SizedBox(width: 5,),
                          Icon(Icons.remove_red_eye,size: iconsize,color: Colors.black),
                          Text("2",style: iconstyle,),
                          SizedBox(width: 5,),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
