import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/cntr/cntrbrndbrt.dart';

class ViewRekBerita extends StatefulWidget {
  const ViewRekBerita({super.key});

  @override
  State<StatefulWidget> createState() => _ViewRekBerita();
}

class _ViewRekBerita extends State<ViewRekBerita> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 16),
      child: ContainerRekBeritaDashboard(),
    );
  }
}