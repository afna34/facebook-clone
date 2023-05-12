import 'package:facebook/widgets/assets.dart';
import 'package:flutter/material.dart';

class FriendSuggetionCard extends StatelessWidget {
  const FriendSuggetionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Image.asset(
                  mammutty,
                  fit: BoxFit.cover,
                  height: 250,
                ),
              ))
        ],
      ),
    );
  }
}
