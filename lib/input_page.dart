import 'package:flutter/material.dart';

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
                  colour: activeCardColor,
                ),
                BoxContainer(
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

class BoxContainer extends StatelessWidget {
  BoxContainer({@required this.colour});
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15.0),
        color: colour,
      ),
    );
  }
}
