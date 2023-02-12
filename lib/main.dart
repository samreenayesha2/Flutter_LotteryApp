import 'dart:math';
import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lottery App"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text("Lottery winning number is 4")),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.4),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: x == 4
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.error,
                            color: Colors.red,
                            size: 35,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Better luck next time, your number is $x\n try again",
                            textAlign: TextAlign.center,
                          )
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.done_all,
                            color: Colors.green,
                            size: 35,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Congratulations you have won the lottery, your number is $x\n try again",
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print(random.nextInt(10).toString());

            x = random.nextInt(6);
            setState(() {});
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
