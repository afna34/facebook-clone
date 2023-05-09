import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  String displayImage;
  bool displayStatus;

  Avatar({required this.displayImage, required this.displayStatus});

  @override
  Widget build(BuildContext context) {
    //Widget statusIndicator;

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

        //it's used insteda of if else..we use displyStatus == condition ? true part : else part
        //displyStatus ? true : false

        displayStatus
            ? Positioned(
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
              )
            : SizedBox(),
      ],
    );
  }
}
