import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class CalculateResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Text(
        "This is the result",
        style: labelTextStyle,
      ),
    );
  }
}
