import 'package:facebook/widgets/circularButton.dart';
import 'package:facebook/widgets/assets.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/assets.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(raj), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(15),
      ),
      width: 150,
      margin: const EdgeInsets.only(
        left: 5,
        right: 5,
        top: 10,
        bottom: 10,
      ),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: CircularButton(
              buttonIcon: Icons.add,
              circularbuttonIconColor: Colors.lightBlue,
              buttonAction: () {
                print('add story');
              },
            ),
          ),
          Positioned(
            left: 10,
            bottom: 10,
            child: Text(
              'Add to story',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
