import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/appbar.dart';
import 'package:plosokerep_apk/resources/btmnavbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const Center(child: Text('Home Page')),
    const Center(child: Text('Search Page')),
    const Center(child: Text('Profile Page')),
    const Center(child: Text('Profile Page')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Appbar(),
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
