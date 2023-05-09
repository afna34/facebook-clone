import 'package:facebook/widgets/Avatar.dart';
import 'package:facebook/widgets/assets.dart';
import 'package:facebook/widgets/blueTick.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String postHeading;
  final String avatar;
  final String personName;
  final String postTime;
  final String postImage;
  final bool showblueTick;

  PostCard({
    required this.avatar,
    required this.personName,
    required this.postTime,
    required this.postHeading,
    required this.postImage,
    this.showblueTick = false,
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
        ],
      ),
    );
  }

  Widget postTitle() {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
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
              displayText(lebel: "20K"),
            ],
          ),
          Container(
            padding: EdgeInsets.only(right: 20),
            child: Row(
              children: [
                displayText(lebel: "10K"),
                SizedBox(
                  width: 5,
                ),
                displayText(lebel: "Comments"),
                SizedBox(
                  width: 15,
                ),
                displayText(lebel: "12K"),
                SizedBox(
                  width: 3,
                ),
                displayText(lebel: "shares")
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
