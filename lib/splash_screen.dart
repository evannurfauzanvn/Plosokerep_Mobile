import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plosokerep_apk/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => _Splashscreen();
}

class _Splashscreen extends State<SplashScreen> {
  void initSplashScreen(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      if (context.mounted) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const Login()));
      }
    });
  }

  @override
  void initState() {
    initSplashScreen(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Container(
            padding: const EdgeInsets.only(right: 20,top: 15,bottom: 15),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.blue[300]),
              child: Image.asset("image/LOGO1.png")),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: CupertinoActivityIndicator(
          color: Colors.blue[900],
          radius: 40,
        ),
      ),
    );
  }
}
