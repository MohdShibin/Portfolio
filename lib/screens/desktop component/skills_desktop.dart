import 'package:flutter/material.dart';
import '../../utils/styles.dart';
import '../../Reusable components/skill_grid_tile.dart';
import '../../utils/constants.dart';

class SkillsDesktop extends StatelessWidget {
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
              'My TechStack',
              style: kHeadingTextStyle,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SkillGridTile(
                    imgLoc: 'coding.jpg',
                    title: 'CODING',
                    subTitle: 'subtitle',
                    starCount: '* * * *',
                  ),
                  SkillGridTile(
                    imgLoc: 'Flutter.jpg',
                    title: 'FLUTTER',
                    subTitle: 'subtitle',
                    starCount: '* * * *',
                  ),
                  SkillGridTile(
                    imgLoc: 'Web.jpg',
                    title: 'WEB',
                    subTitle: 'subtitle',
                    starCount: '* * * *',
                  ),
                  SkillGridTile(
                    imgLoc: 'uiux.jpg',
                    title: 'UI/UX',
                    subTitle: 'subtitle',
                    starCount: '* * * *',
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 45.0,
                  ),
                  SkillGridTile(
                    imgLoc: 'cppjava.jpg',
                    title: 'CPP/JAVA',
                    subTitle: 'subtitle',
                    starCount: '* * * *',
                  ),
                  SkillGridTile(
                    imgLoc: 'python.jpg',
                    title: 'PYTHON',
                    subTitle: 'subtitle',
                    starCount: '* * * *',
                  ),
                  SkillGridTile(
                    imgLoc: 'design.jpg',
                    title: 'DESIGN',
                    subTitle: 'subtitle',
                    starCount: '* * * *',
                  ),
                  SizedBox(
                    width: 45.0,
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
