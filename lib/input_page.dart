import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
      print("Male Tapped 1");
    }
    if (gender == 2) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
      print("FeMale Tapped 2");
    }
  }

  // void updateMale() {
  //   if (maleCardColor == inactiveCardColor) {
  //     maleCardColor = activeCardColor;
  //     femaleCardColor = inactiveCardColor;
  //   } else {
  //     maleCardColor = inactiveCardColor;
  //   }
  //   print("Male tapped this time");
  // }

  // void updateFemale() {
  //   print("Feale Tapped here");
  // }

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
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                      // print("Male Tapped");
                    },
                    child: BoxContainer(
                      colour: maleCardColor,
                      childCard: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: "Male",
                      ),
                      // colour: activeCardColor,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                      // print("Female Tapped");
                    },
                    child: BoxContainer(
                      colour: femaleCardColor,

                      childCard: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: "Female",
                      ),
                      // colour: activeCardColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: BoxContainer(
              colour: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: BoxContainer(
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: BoxContainer(
                    colour: activeCardColor,
                  ),
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
