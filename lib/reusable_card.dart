import 'package:flutter/material.dart';

class BoxContainer extends StatelessWidget {
  BoxContainer({@required this.colour, this.childCard});
  final Color colour;
  final Widget childCard;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: EdgeInsets.all(15.0),
      color: colour,
    );
  }
}
