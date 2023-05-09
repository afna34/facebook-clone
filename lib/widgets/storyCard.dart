import 'package:facebook/widgets/Avatar.dart';
import 'package:facebook/widgets/circularButton.dart';
import 'package:facebook/widgets/assets.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/assets.dart';

class StoryCard extends StatelessWidget {
  bool displayBorder;
  String cardText;
  String story;
  String profilePic;
  bool createStoryStatus;

  StoryCard({
    required this.profilePic,
    required this.cardText,
    required this.story,
    this.createStoryStatus = false,
    this.displayBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(story), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(15),
      ),
      width: 150,
      margin: const EdgeInsets.only(
        left: 5,
        right: 5,
        top: 10,
        bottom: 10,
      ),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: createStoryStatus
                ? CircularButton(
                    buttonIcon: Icons.add,
                    circularbuttonIconColor: Colors.lightBlue,
                    buttonAction: () {
                      print('add story');
                    },
                  )
                : Avatar(
                    displayImage: profilePic,
                    displayStatus: false,
                    displayBorder: displayBorder,
                  ),
          ),
          Positioned(
            left: 10,
            bottom: 10,
            child: Text(
              cardText != null ? cardText : "N/A",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
