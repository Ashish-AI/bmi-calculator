import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.text, this.onTap});
  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: onTap,
        child: Center(
          child: Text(
            "$text",
            style: kLargeButtonStyle,
          ),
        ),
      ),
      color: bottomContainerColor,
      padding: EdgeInsets.only(bottom: 10.0),
      height: bottomContainerHeight,
      width: double.infinity,
    );
  }
}
