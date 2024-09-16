import 'package:flutter/material.dart';
import 'package:plosokerep_apk/beranda.dart';
import 'package:plosokerep_apk/resources/btmnavbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const Beranda(),
    const Center(child: Text('profile desa')),
    const Center(child: Text('layanan')),
    const Center(child: Text('data penduduk')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Bottomnavigationbar(
        currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
      ),
    );
  }
}
