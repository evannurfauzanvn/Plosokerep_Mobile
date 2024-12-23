import 'package:flutter/material.dart';
import 'package:plosokerep_apk/info_produk.dart';
import 'package:plosokerep_apk/resources/clr.dart';
import 'package:plosokerep_apk/resources/cntr/sdwcntr.dart';
import 'package:plosokerep_apk/resources/styltx.dart';

class ContainerUMKM extends StatelessWidget {
  final double iconsize = 20;
  final VoidCallback? onPressed;
  const ContainerUMKM({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
        borderRadius: BorderRadius.circular(10),
        child: ElevatedButton(
          style: ButtonStyle(
              padding: WidgetStatePropertyAll(EdgeInsets.all(8)),
              backgroundColor: WidgetStatePropertyAll(background),
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)))),
          onPressed: onPressed ??
              () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return InfoProduk();
                }));
              },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber),
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
                            text: "Nama Produk\n",
                            style: styleJudul,
                            children: [
                              TextSpan(text: "Rp. ", style: styleTanggal),
                              TextSpan(text: "Harga", style: styleTanggal)
                            ]),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
