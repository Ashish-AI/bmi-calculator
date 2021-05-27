import 'package:flutter/material.dart';
import 'input_page.dart';
import 'calculate_result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI Calculator",
      theme: ThemeData(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21)),
      home: InputPage(),
      routes: {
        // '/': (context) => InputPage(),
        '/result': (context) => CalculateResult(),
      },
    );
  }
}
