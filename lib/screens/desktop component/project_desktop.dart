import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Reusable%20components/project_tile.dart';
import 'package:portfolio/models/project_model.dart';
import '../../utils/constants.dart';
import '../../utils/styles.dart';

class ProjectDesktop extends StatelessWidget {
  
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProjectTile(
                    icon: FontAwesomeIcons.github,
                    imgLoc: 'piano.png',
                  ),
                  ProjectTile(
                    icon: FontAwesomeIcons.github,
                    imgLoc: 'lms.png',
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WHAT I DID !\n',
                        style: kHeadingTextStyle,
                      ),
                      Text(
                        'What special about me\nis that i know how to apply\nwhat i have learned\nHere some of my work',
                        textAlign: TextAlign.right,
                        style: kDescriptionTextStyle
                      ),
                    ],
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
