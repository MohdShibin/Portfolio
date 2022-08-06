import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../../utils/styles.dart';
import '../../Reusable components/skill_tile.dart';

List<SkillTile> skillTiles = const [
  SkillTile(
    imgLoc: 'Flutter.jpg',
    title: 'FLUTTER',
    subTitle: 'subtitle',
    starCount: '*  *  *  *',
  ),
  SkillTile(
    imgLoc: 'Web.jpg',
    title: 'WEB',
    subTitle: 'subtitle',
    starCount: '*  *  *  *',
  ),
  SkillTile(
    imgLoc: 'uiux.jpg',
    title: 'UI/UX',
    subTitle: 'subtitle',
    starCount: '*  *  *  *',
  ),
  SkillTile(
    imgLoc: 'cppjava.jpg',
    title: 'CPP/JAVA',
    subTitle: 'subtitle',
    starCount: '* * * *',
  ),
  SkillTile(
    imgLoc: 'python.jpg',
    title: 'PYTHON',
    subTitle: 'subtitle',
    starCount: '* * * *',
  ),
  SkillTile(
    imgLoc: 'design.jpg',
    title: 'DESIGN',
    subTitle: 'subtitle',
    starCount: '* * * *',
  ),
];

class SkillsDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenHeight =
        screenSize.height > 600 ? screenSize.height * 0.92 : 600.0;
    return Container(
      height: screenHeight,
      width: screenSize.width,
      color: kPrimaryColor,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenSize.width / 8.0,
          vertical: 40.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'WHAT I \nGOOD WITH !\n',
                    style: kHeadingTextStyle,
                  ),
                  Text(
                    'I always likes to learn \nnew things and \nit never exhaust me',
                    style: kDescriptionTextStyle
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        skillTiles[0],
                        skillTiles[1],
                        skillTiles[2],
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        skillTiles[3],
                        skillTiles[4],
                        skillTiles[5],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
