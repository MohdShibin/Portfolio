import 'package:flutter/material.dart';
import '../../utils/styles.dart';
import '../../Reusable components/skill_tile.dart';

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
          horizontal: screenSize.width / 8.0,
          vertical: 40.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'MY TECHSTACK',
              style: kHeadingTextStyle,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SkillTile(
                    imgLoc: 'coding.jpg',
                    title: 'CODING',
                    subTitle: 'subtitle',
                    starCount: '*  *  *  *',
                  ),
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
