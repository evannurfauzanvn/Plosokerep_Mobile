import 'dart:async';
import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/adds/adds_dumy.dart';

class Iklan extends StatefulWidget {
  const Iklan({super.key});

  @override
  State<StatefulWidget> createState() => _Iklan();
}

class _Iklan extends State<Iklan> {
  late PageController _pageController;
  late Timer _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);

    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < iklan.length - 1) {
        _currentPage++;
      } else {
        _currentPage =
            0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: _pageController,
        itemCount: iklan.length,
        itemBuilder: (context, index) {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: iklan[index],
          );
        });
  }
}
