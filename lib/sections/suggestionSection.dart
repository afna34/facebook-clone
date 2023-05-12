import 'package:facebook/widgets/friendsSuggetionCard.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  const SuggestionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(
        children: [
          ListTile(
            title: Text('People you may know'),
            trailing: IconButton(
                onPressed: () {
                  print('Click more');
                },
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.grey[700],
                )),
          ),
          Container(
            height: 340,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                FriendSuggetionCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
