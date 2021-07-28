import 'package:flutter/material.dart';
import 'package:human_calculate/result_page.dart';

import 'Input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MBICalculator();
  }
}

class MBICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   primaryColor: Color(0xFF0E0F20),
      //   scaffoldBackgroundColor: Color(0xFF0E0F20),
      //   textTheme: TextTheme(body1: TextStyle(color: Colors.white),)
      // ),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      // home: InputPage(),
      routes: {
        '/': (context) => InputPage(),
        '/result': (context) => ResultsPage()
      },
      initialRoute: '/',
    );
  }
}
