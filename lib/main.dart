import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var myCounter = 0;

  void incrementCounter() {
    setState(() {
      myCounter++;
    });
  }

  void zeroCounter() {
    setState(() {
      myCounter = 0;
    });
  }

  void decrementCounter() {
    setState(() {
      myCounter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Counter App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Yours Clicks $myCounter',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),

//This is a first incrementCounter Elevatedbutton
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: incrementCounter,
                    child: const Text(
                      '+1',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                      fixedSize: const Size(70, 70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    )),
              ),

//This is a second zeroCounter Elevatedbutton
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: zeroCounter,
                    child: const Text(
                      '0',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                      fixedSize: const Size(70, 70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    )),
              ),

//This is a thired decrementCounter Elevatedbutton
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: decrementCounter,
                    child: const Text(
                      '-1',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                      fixedSize: const Size(70, 70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
