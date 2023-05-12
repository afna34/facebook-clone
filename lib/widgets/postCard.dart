import 'package:facebook/widgets/Avatar.dart';
import 'package:facebook/widgets/assets.dart';
import 'package:facebook/widgets/blueTick.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:flutter/material.dart';
import 'package:facebook/sections/headerButtonSection.dart';

class PostCard extends StatelessWidget {
  final String postHeading;
  final String avatar;
  final String personName;
  final String postTime;
  final String postImage;
  final bool showblueTick;
  final String likeCount;
  final String commentCount;
  final String shareCount;

  PostCard({
    required this.avatar,
    required this.personName,
    required this.postTime,
    required this.postHeading,
    required this.postImage,
    this.showblueTick = false,
    required this.commentCount,
    required this.likeCount,
    required this.shareCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          postTitle(),
          imageSection(),
          footerSection(),
          Divider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          HeaderButtonSection(
            buttonOne: headerButton(
                buttonAction: () {
                  print('Like photo!');
                },
                buttonColor: Colors.grey,
                buttonIcon: Icons.thumb_up_alt_outlined,
                buttonText: "Live",
                buttonTextColor: Colors.grey),
            buttonTwo: headerButton(
              buttonAction: () {
                print('Send message!');
              },
              buttonTextColor: Colors.grey,
              buttonColor: Colors.grey,
              buttonIcon: Icons.message_outlined,
              buttonText: "Message",
            ),
            buttonThree: headerButton(
              buttonAction: () {
                print('Share this post!');
              },
              buttonColor: Colors.grey,
              buttonTextColor: Colors.grey,
              buttonIcon: Icons.share_outlined,
              buttonText: "Share",
            ),
          ),
        ],
      ),
    );
  }

  Widget postTitle() {
    return Container(
      padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
      child: Text(
        postHeading == null ? "" : postHeading,
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
    );
  }

  Widget imageSection() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(postImage), fit: BoxFit.fill),
      ),
      padding: EdgeInsets.all(200),
      //child: Image.asset(postImage),
    );
  }

  Widget postCardHeader() {
    return ListTile(
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
          showblueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(postTime != null ? postTime : ""),
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
        ),
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 16,
                height: 16,
                decoration:
                    BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                child: Icon(
                  Icons.thumb_up,
                  color: Colors.white,
                  size: 12,
                ),
              ),
              SizedBox(
                width: 3,
              ),
              displayText(lebel: likeCount),
            ],
          ),
          Container(
            padding: EdgeInsets.only(right: 20),
            child: Row(
              children: [
                displayText(lebel: commentCount),
                SizedBox(
                  width: 5,
                ),
                displayText(lebel: "Comments"),
                SizedBox(width: 15),
                displayText(lebel: shareCount),
                SizedBox(
                  width: 3,
                ),
                displayText(lebel: "shares"),
                Avatar(
                  displayImage: avatar,
                  displayStatus: false,
                  height: 25,
                  width: 25,
                ),
                IconButton(
                    onPressed: () {
                      print('Drop down list..');
                    },
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey[700],
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displayText({required String lebel}) {
    return Text(
      lebel == null ? "" : lebel,
      style: TextStyle(
        color: Colors.grey[700],
      ),
    );
  }
}
