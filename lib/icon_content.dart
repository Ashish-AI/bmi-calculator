import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label});

  //for icon Icondata is the datatype
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}

// void updateColor(int gender) {
//     // 1 for male
//     if (gender == 1) {
//       if (maleActiveColor == inactiveCardColor) {
//         print("maleActive");
//         maleActiveColor = activeCardColor;
//         femaleActiveColor = inactiveCardColor;
//       } else {
//         maleActiveColor = inactiveCardColor;
//       }
//     }
//     // 2 for female
//     if (gender == 2) {
//       if (femaleActiveColor == inactiveCardColor) {
//         femaleActiveColor = activeCardColor;
//         maleActiveColor = inactiveCardColor;
//       } else {
//         femaleActiveColor = inactiveCardColor;
//       }
//     }
//   }
