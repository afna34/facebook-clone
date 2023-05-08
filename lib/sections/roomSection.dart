import 'package:facebook/widgets/Avatar.dart';
import 'package:facebook/widgets/assets.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(
            displayImage: raj,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mammutty,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mohanlal,
            displayStatus: true,
          ),
          Avatar(
            displayImage: actor,
            displayStatus: true,
          ),
          Avatar(
            displayImage: tovino,
            displayStatus: true,
          ),
          Avatar(
            displayImage: nivin,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mammutty,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mohanlal,
            displayStatus: true,
          ),
          Avatar(
            displayImage: actor,
            displayStatus: true,
          ),
          Avatar(
            displayImage: tovino,
            displayStatus: true,
          ),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      child: OutlinedButton.icon(
        onPressed: () {
          print('Room create button clicked');
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              side: BorderSide(color: Colors.blue),
            ),
          ),
        ),
        label: Text(
          'Create \n Room',
          style: TextStyle(color: Colors.lightBlue),
        ),
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
      ),
    );
  }
}
