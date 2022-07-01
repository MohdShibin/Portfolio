import 'dart:js';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';
import '../../utils/styles.dart';
import '../../Reusable components/skill_grid_tile.dart';
import '../../utils/constants.dart';

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
        screenSize.height > 600 ? screenSize.height * 0.92 : 600.0;
    return SizedBox(
      height: screenHeight,
      width: screenSize.width,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: screenSize.width / 8.0, vertical: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'My TechStack\n',
              style: kHeadingTextStyle,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SkillGridTile(
                      imgLoc: 'web.webp',
                      title: 'TITLE\n',
                      subTitle: 'subtitle',
                      starCount: '* * * *'),
                  SkillGridTile(
                      imgLoc: 'web.webp',
                      title: 'TITLE\n',
                      subTitle: 'subtitle',
                      starCount: '* * * *'),
                  SkillGridTile(
                      imgLoc: 'web.webp',
                      title: 'TITLE\n',
                      subTitle: 'subtitle',
                      starCount: '* * * *'),
                  SkillGridTile(
                      imgLoc: 'web.webp',
                      title: 'TITLE\n',
                      subTitle: 'subtitle',
                      starCount: '* * * *'),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SkillGridTile(
                      imgLoc: 'web.webp',
                      title: 'TITLE\n',
                      subTitle: 'subtitle',
                      starCount: '* * * *'),
                  SkillGridTile(
                      imgLoc: 'web.webp',
                      title: 'TITLE\n',
                      subTitle: 'subtitle',
                      starCount: '* * * *'),
                  SkillGridTile(
                      imgLoc: 'web.webp',
                      title: 'TITLE\n',
                      subTitle: 'subtitle',
                      starCount: '* * * *'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildGridView() => Flexible(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 50.0,
            mainAxisSpacing: 50.0,
            childAspectRatio: 0.9,
          ),
          itemCount: gridItem.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 180.0, vertical: 80.0),
          itemBuilder: (context, index) {
            return Container(
              color: Colors.blue,
            );
          },
        ),
      );
}
