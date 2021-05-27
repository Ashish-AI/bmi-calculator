import 'package:flutter/material.dart';

class BoxContainer extends StatelessWidget {
  BoxContainer({@required this.colour, this.childCard, this.onPress});
  final Color colour;
  final Widget childCard;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(15.0),
        color: colour,
      ),
    );
  }
}
