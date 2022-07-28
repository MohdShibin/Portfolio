import 'package:flutter/material.dart';
import 'package:portfolio/models/project_model.dart';
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
            Text(
              'PROJECTS',
              style: kHeadingTextStyle,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
