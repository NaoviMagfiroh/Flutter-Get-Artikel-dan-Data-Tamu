import 'dart:async';
import 'package:flutter/material.dart';
import 'package:naovimagfiroh_20090135_orbitflutter/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 6), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const HalamanLogin()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img/orbit_logo.jpg',
              height: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            Text('Naovi Magfiroh',
                style: TextStyle(
                    fontSize: 15, letterSpacing: 2, wordSpacing: 3, height: 2)),
            const CircularProgressIndicator.adaptive(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
