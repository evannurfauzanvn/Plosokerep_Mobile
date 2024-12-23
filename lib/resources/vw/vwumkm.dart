import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/cntr/cntrumkm.dart';

class ViewUMKM extends StatefulWidget {
  const ViewUMKM({super.key});

  @override
  State<StatefulWidget> createState() => _ViewUMKM();
}

class _ViewUMKM extends State<ViewUMKM> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 16),
      child: ContainerUMKM(),
    );
  }
}