import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  int x = 0;
  Random random = Random();
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff000075),
          title: Text(
            'LOTTERY APP',
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 24, color: Colors.white),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Image(image: AssetImage('assets/logos.png')),
              SizedBox(
                height: 50,
              ),
              Text(
                'The Lottery Number is 5 ',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff000075)),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                  height: 250,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff000075)),
                  child: x == 5
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                              Icon(
                                Icons.done,
                                color: Colors.white,
                                size: 40,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Text(
                                  'Congrulation !!\n You Won The Lottery And Your Number Is $x',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ])
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.error,
                              color: Colors.white,
                              size: 40,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Center(
                              child: Text(
                                'Better Luck Next Time,\nThe Lottery Number Is $x',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: (() {
              setState(() {
                x = random.nextInt(10);
              });
              ;
            }),
            child: Icon(Icons.refresh),
            backgroundColor: Color(0xff000075)),
      ),
    );
  }
}
