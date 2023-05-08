import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  Widget headerButton({
    required String buttonText,
    required IconData buttonIcon,
    required void Function() buttonAction,
    required Color buttonColor,
  }) {
    return TextButton.icon(
      label: Text(buttonText),
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonColor,
      ),
    );
  }

  const HeaderButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        headerButton(
          buttonText: "Live",
          buttonAction: () {
            print('Go live');
          },
          buttonColor: Colors.red,
          buttonIcon: Icons.video_call,
        ),
        VerticalDivider(
          thickness: 1,
          color: Colors.grey[300],
        ),
        headerButton(
          buttonText: "Photo",
          buttonAction: () {
            print('open photos');
          },
          buttonColor: Colors.green,
          buttonIcon: Icons.photo,
        ),
        VerticalDivider(
          thickness: 1,
          color: Colors.grey[300],
        ),
        headerButton(
          buttonText: "Room",
          buttonAction: () {
            print('create a room');
          },
          buttonColor: Colors.purple,
          buttonIcon: Icons.video_call,
        ),
      ]),
    );
  }
}
