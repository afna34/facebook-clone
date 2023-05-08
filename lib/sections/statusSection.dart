import 'package:facebook/widgets/Avatar.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/assets.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(displayImage: raj),
      title: const TextField(
        decoration: InputDecoration(
          hintText: "What's on your mind? ",
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
