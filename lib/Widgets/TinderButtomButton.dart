import 'package:flutter/material.dart';

class FloatingThreeButton extends StatefulWidget {
  @override
  _FloatingThreeButtonState createState() => _FloatingThreeButtonState();
}

class _FloatingThreeButtonState extends State<FloatingThreeButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Text('HII'),
    );
  }
}

class CircularButton extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Icon icon;
  final Function onClick;

  CircularButton(
      {this.color, this.width, this.height, this.icon, this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
