import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                BoxContainer(
                  childCard:
                      IconContent(icon: FontAwesomeIcons.mars, label: "Male"),
                  colour: activeCardColor,
                ),
                BoxContainer(
                  childCard: IconContent(
                      icon: FontAwesomeIcons.venus, label: "Female"),
                  colour: activeCardColor,
                ),
              ],
            ),
          ),
          BoxContainer(
            colour: activeCardColor,
          ),
          Expanded(
            child: Row(
              children: [
                BoxContainer(
                  colour: activeCardColor,
                ),
                BoxContainer(
                  colour: activeCardColor,
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            height: bottomContainerHeight,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
