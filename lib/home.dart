import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/sections/storySection.dart';
import 'package:facebook/sections/suggestionSection.dart';
import 'package:facebook/widgets/assets.dart';
import 'package:facebook/widgets/blueTick.dart';
import 'package:facebook/widgets/circularButton.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:facebook/widgets/postCard.dart';
import 'package:facebook/widgets/storyCard.dart';
import 'package:flutter/material.dart';
import 'package:facebook/sections/statusSection.dart';
import 'package:facebook/sections/roomSection.dart';

class Home extends StatelessWidget {
  Widget thinDivider = Divider(
    thickness: 1,
    color: Colors.grey[300],
  );
  Widget thickDivider = Divider(
    thickness: 10,
    color: Colors.grey[300],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'facebook',
            style: TextStyle(
              color: Colors.lightBlue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
              buttonIcon: Icons.search,
              circularbuttonIconColor: Colors.black,
              buttonAction: () {
                print('go to button icon');
              },
            ),
            CircularButton(
              buttonIcon: Icons.message,
              circularbuttonIconColor: Colors.black,
              buttonAction: () {
                print('go to message icon');
              },
            )
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSection(
              buttonOne: headerButton(
                buttonAction: () {
                  print('Like ..!');
                },
                buttonColor: Colors.red,
                buttonIcon: Icons.video_call,
                buttonTextColor: Colors.blue,
                buttonText: "Live",
              ),
              buttonTwo: headerButton(
                buttonAction: () {
                  print('Take photo!');
                },
                buttonColor: Colors.green,
                buttonTextColor: Colors.blue,
                buttonIcon: Icons.photo_library,
                buttonText: "Photo",
              ),
              buttonThree: headerButton(
                buttonAction: () {
                  print('Create room!');
                },
                buttonColor: Colors.purple,
                buttonTextColor: Colors.blue,
                buttonIcon: Icons.video_call,
                buttonText: "Room",
              ),
            ),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              personName: "Mohanlal",
              avatar: mohanlal,
              postTime: "6h",
              postHeading: "First look",
              postImage: story5,
              showblueTick: true,
              likeCount: "2K",
              commentCount: "300",
              shareCount: "20K",
            ),
            thickDivider,
            SuggestionSection(),
            thickDivider,
            PostCard(
              personName: "Actor Dilip",
              avatar: dilip,
              postTime: "1 day ago",
              postHeading: "Happy Diwali",
              postImage: story2,
              showblueTick: true,
              likeCount: "22K",
              commentCount: "500",
              shareCount: "33K",
            ),
            thickDivider,
            PostCard(
              personName: "Shain chacko",
              avatar: shain,
              postTime: "1 day ago",
              postHeading: junctionTitle,
              postImage: story3,
              showblueTick: true,
              likeCount: "22K",
              commentCount: "500",
              shareCount: "33K",
            ),
            thickDivider,
            PostCard(
              personName: "Mammutty",
              avatar: mammutty,
              postTime: "1 min ago",
              postHeading: onw91Title,
              postImage: story8,
              showblueTick: true,
              likeCount: "223K",
              commentCount: "5K",
              shareCount: "33K",
            ),
            thickDivider,
            PostCard(
              personName: "Actor surya",
              avatar: actor,
              postTime: "1 min ago",
              postHeading: chackoTitle,
              postImage: story4,
              showblueTick: true,
              likeCount: "223K",
              commentCount: "5K",
              shareCount: "33K",
            ),
          ],
        ),
      ),
    );
  }
}
