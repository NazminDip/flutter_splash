// ignore_for_file: unused_field

import 'package:flutter/material.dart';

import 'home_page.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [Colors.pink, Colors.purple])),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              Column(
                children: [
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                        decoration: InputDecoration(
                            prefix: const Icon(
                              Icons.search_off_outlined,
                              size: 20,
                              color: Colors.white,
                            ),
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ))),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text('Welcome Page',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 15),
                  const CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('images/lady.jpg'),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Toatal Number is $_count",
                    style: const TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            FloatingActionButton(
                                backgroundColor: Colors.pink,
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _count++;
                                  });
                                }),
                            const SizedBox(width: 10),
                            FloatingActionButton(
                                backgroundColor: Colors.pink,
                                child: const Text('_',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                                onPressed: () {
                                  setState(() {
                                    _count--;
                                  });
                                }),
                            const SizedBox(width: 10),
                            FloatingActionButton(
                                backgroundColor: Colors.pink,
                                child: const Icon(
                                  Icons.refresh,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _count = 0;
                                  });
                                }),
                          ],
                        )
                      ]),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: ElevatedButton(
                      //       style: ElevatedButton.styleFrom(
                      //           primary: Colors.pink,
                      //           onPrimary: Colors.white,
                      //           shadowColor: Colors.greenAccent,
                      //           elevation: 3,
                      //           shape: RoundedRectangleBorder(
                      //               borderRadius: BorderRadius.circular(32.0))),
                      //       onPressed: () {},
                      //       child: const Text(
                      //         'Product List',
                      //         style: TextStyle(
                      //             color: Colors.white,
                      //             fontSize: 20,
                      //             fontWeight: FontWeight.bold),
                      //       )),
                      // ),

                      FloatingActionButton.extended(
                          backgroundColor: Colors.pink,
                          onPressed: () {},
                          label: const Text(
                            'Product List',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                      const SizedBox(width: 10),
                      FloatingActionButton.extended(
                          backgroundColor: Colors.pink,
                          onPressed: () {},
                          label: const Text(
                            'Card List',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  )
                ],
              ),
            ]),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pink,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
          child: const Icon(
            Icons.home,
            color: Colors.white,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
