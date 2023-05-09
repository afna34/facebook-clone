import 'package:facebook/widgets/Avatar.dart';
import 'package:facebook/widgets/assets.dart';
import 'package:facebook/widgets/blueTick.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String personName;
  final String PostTime;

  PostCard(
      {required this.avatar, required this.personName, required this.PostTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
              leading: Avatar(
                displayImage: avatar,
                displayStatus: false,
              ),
              title: Row(
                children: [
                  Text(personName),
                  SizedBox(
                    width: 10,
                  ),
                  BlueTick(),
                ],
              ),
              subtitle: Row(
                children: [
                  Text(PostTime != null ? PostTime : ""),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.public,
                    color: Colors.grey[700],
                    size: 20,
                  ),
                ],
              ),
              trailing: IconButton(
                  onPressed: () {
                    print('more info');
                  },
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.grey[700],
                  ))),
        ],
      ),
    );
  }
}
