import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Reusable%20components/project_tile.dart';
import 'package:portfolio/models/project_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../utils/styles.dart';
import '../../utils/constants.dart';

class ProjectDesktop extends StatelessWidget {
  List<ProjectModel> projects = [
    ProjectModel(title: 'Pocket Piano', imageURL: 'piano.png'),
    ProjectModel(title: 'LibPro', imageURL: 'lms.png'),
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
          horizontal: screenSize.width / 8.0,
          vertical: 40.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'What i did\n',
                        style: kHeadingTextStyle,
                      ),
                      Text(
                        'What special about me',
                        style: TextStyle(fontSize: 22.0),
                      ),
                      Text(
                        'is that i know how to apply',
                        style: TextStyle(fontSize: 22.0),
                      ),
                      Text(
                        'what i have learned',
                        style: TextStyle(fontSize: 22.0),
                      ),
                      SizedBox(
                        height: 100,
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
