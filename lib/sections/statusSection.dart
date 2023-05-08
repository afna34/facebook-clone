import 'package:flutter/material.dart';
import 'package:facebook/widgets/assets.dart';

import '../widgets/Avatar.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(),
      title: TextField(
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
