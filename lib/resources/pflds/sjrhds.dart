import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class SejarahDesa extends StatelessWidget {
  const SejarahDesa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Sejarah Desa Plosokerep",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Stack(
          children: [
            SfPdfViewer.asset(
              'assets/Sejarah Desa Plosokerep.pdf',
              canShowScrollHead: false,
              canShowScrollStatus: false,
              pageSpacing: 0,
              enableDoubleTapZooming: false,
              maxZoomLevel: 1,
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
