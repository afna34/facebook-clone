import 'package:facebook/widgets/assets.dart';
import 'package:facebook/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            cardText: "Add to story",
            story: raj,
            profilePic: raj,
            createStoryStatus: true,
          ),
          StoryCard(
            displayBorder: true,
            cardText: "Mammutty",
            story: story1,
            profilePic: mammutty,
          ),
          StoryCard(
            displayBorder: true,
            cardText: "Mohanlal",
            story: story2,
            profilePic: mohanlal,
          ),
          StoryCard(
            displayBorder: true,
            cardText: "Nivin",
            story: story3,
            profilePic: nivin,
          ),
          StoryCard(
            displayBorder: true,
            cardText: "actor",
            story: story4,
            profilePic: actor,
          ),
          StoryCard(
            displayBorder: true,
            cardText: "tovino",
            story: story6,
            profilePic: tovino,
          ),
          StoryCard(
            displayBorder: true,
            cardText: "shain",
            story: story7,
            profilePic: shain,
          ),
          StoryCard(
            displayBorder: true,
            cardText: "dilip",
            story: story8,
            profilePic: dilip,
          ),
        ],
      ),
    );
  }
}
