import 'dart:js';

import 'package:flutter/material.dart';
import '../../utils/styles.dart';

class SkillsDesktop extends StatelessWidget {

  List gridItem = [
    'ABB',
    'shsd',
    'ABB',
    'shsd',
    'ABB',
    'shsd',
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenHeight =
        screenSize.height > 600 ? screenSize.height * 0.93 : 600.0;
    return SizedBox(
      height: screenHeight,
      width: screenSize.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, 
        children: [
          Text(
            'My TechStack',
            style: kHeadingTextStyle,
          ),
      ],
      ),
    );
  }

  Widget buildGridView() => GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemCount: gridItem.length,
        itemBuilder: (context, index) {
          return Container(

          );
        },
      );
}
