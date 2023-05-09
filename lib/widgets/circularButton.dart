import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;
  final Color circularbuttonIconColor;

  CircularButton(
      {required this.buttonIcon,
      required this.buttonAction,
      required this.circularbuttonIconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: IconButton(
          onPressed: buttonAction,
          icon: Icon(
            buttonIcon,
            color: circularbuttonIconColor,
            size: 25,
          )),
    );
  }
}
