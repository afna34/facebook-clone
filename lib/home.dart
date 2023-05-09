import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/sections/storySection.dart';
import 'package:facebook/widgets/assets.dart';
import 'package:facebook/widgets/blueTick.dart';
import 'package:facebook/widgets/circularButton.dart';
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
            HeaderButtonSection(),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              personName: "Mohanlal",
              avatar: mohanlal,
              PostTime: "6h",
            ),
          ],
        ),
      ),
    );
  }
}
