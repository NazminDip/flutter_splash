import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:appgradient/home_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: AnimatedSplashScreen(
        splash: 'images/p.jpg',
        nextScreen: const HomePage(),
        splashTransition: SplashTransition.rotationTransition,
      ),
    );
  }
}
