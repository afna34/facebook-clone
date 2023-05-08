import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/widgets/appBarButton.dart';
import 'package:flutter/material.dart';
import 'package:facebook/sections/statusSection.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'facebook',
            style: TextStyle(
              color: Colors.lightBlue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            AppBarButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print('go to button icon');
              },
            ),
            AppBarButton(
              buttonIcon: Icons.message,
              buttonAction: () {
                print('go to message icon');
              },
            )
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            HeaderButtonSection(),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            )
          ],
        ),
      ),
    );
  }
}
