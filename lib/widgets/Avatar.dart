import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  String displayImage;

  Avatar({required this.displayImage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 8, right: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              displayImage,
              width: 50,
              height: 50,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 1.0,
          child: Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
          ),
        ),
      ],
    );
  }
}
