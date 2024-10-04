import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/br/appbrpflds.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class VisiMisiDesa extends StatelessWidget {
  final TextStyle textstyle =
      const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  const VisiMisiDesa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppbarProfileDesa(
        judul: "Visi dan Misi Desa Tahun 2015-2021",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Text(
                    "Visi Desa",
                    style: textstyle,
                  ),
                  SizedBox(
                    height: 265,
                    child: SfPdfViewer.asset(
                      'assets/Visi.pdf',
                      canShowScrollHead: false,
                      canShowScrollStatus: false,
                      pageSpacing: 0,
                      enableDoubleTapZooming: false,
                      maxZoomLevel: 1,
                    ),
                  ),
                  Text(
                    "Misi Desa",
                    style: textstyle,
                  ),
                  SizedBox(
                    height: 330,
                    child: SfPdfViewer.asset(
                      'assets/Misi.pdf',
                      canShowScrollHead: false,
                      canShowScrollStatus: false,
                      pageSpacing: 0,
                      enableDoubleTapZooming: false,
                      maxZoomLevel: 1,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.transparent,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Image.asset(
                  "image/logo.png",
                  opacity: const AlwaysStoppedAnimation(0.2),
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
