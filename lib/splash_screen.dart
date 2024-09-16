import 'package:flutter/material.dart';
import 'package:plosokerep_apk/main_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => _Splashscreen();
}

class _Splashscreen extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..addListener(() {
        setState(() {});
        if (_controller.isCompleted) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        }
      });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  padding: const EdgeInsets.only(
                      right: 20, left: 20, top: 15, bottom: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue[300]),
                  child: Image.asset("image/LOGO1.png")),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '${(_controller.value * 100).toInt()}%',
                    style: TextStyle(
                        color: Colors.blue[900], fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              LinearProgressIndicator(
                color: Colors.blue[900],
                minHeight: 10,
                borderRadius: BorderRadius.circular(10),
                value: _controller.value,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
