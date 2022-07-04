

import 'dart:async';

import 'package:flutter/material.dart';

import 'first_page.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const  FirstPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/p.jpg'),
            const SizedBox(height: 10),
            const Text(
              ' Welcome To Splash Screen',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const SizedBox(height: 15),
            const CircularProgressIndicator(
              strokeWidth: 10,
              backgroundColor: Colors.red,
            ),
          ],
        ),
     ),
      // bottomNavigationBar: BottomAppBar(
      //   shape: const CircularNotchedRectangle(),
      //   child: Container(width: 50),
      // ),
      // floatingActionButton: FloatingActionButton.extended(
      //   backgroundColor: Colors.red,
      //   onPressed: () => const SplashScreen(),
      //   label: const Icon(Icons.add),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
