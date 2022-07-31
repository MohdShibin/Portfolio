import 'package:flutter/material.dart';
import 'package:portfolio/screens/desktop%20component/contact_desktop.dart';
import 'package:portfolio/screens/desktop%20component/project_desktop.dart';
import 'package:portfolio/screens/desktop%20component/skills_desktop.dart';
import '../screens/desktop component/home_desktop.dart';
import '../screens/desktop component/about_desktop.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenHeight =
        screenSize.height > 600 ? screenSize.height * 0.93 : 600.0;
    // return SingleChildScrollView(
    //   child: Column(
    //     children: [
    //       HomeDesktop(),
    //       AboutDesktop(),
    //       SkillsDesktop(),
    //     ],
    //   ),
    // );
    return ListView(
      children: [
          HomeDesktop(),
          AboutDesktop(),
          SkillsDesktop(),
          ProjectDesktop(),
          ContactDesktop(),
      ],
    );
  }
}
