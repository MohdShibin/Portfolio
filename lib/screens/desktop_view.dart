import 'package:flutter/material.dart';
import 'package:portfolio/screens/desktop%20component/contact_desktop.dart';
import 'package:portfolio/screens/desktop%20component/project_desktop.dart';
import 'package:portfolio/screens/desktop%20component/skills_desktop.dart';
import 'package:portfolio/screens/main_page.dart';
import '../screens/desktop component/home_desktop.dart';
import '../screens/desktop component/about_desktop.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  double offset = 0;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    // return SingleChildScrollView(
    //   child: Column(
    //     children: [
    //       HomeDesktop(),
    //       AboutDesktop(),
    //       SkillsDesktop(),
    //     ],
    //   ),
    // );
    // return ListView(
    //   children: [
    //       HomeDesktop(),
    //       AboutDesktop(),
    //       SkillsDesktop(),
    //       ProjectDesktop(),
    //       ContactDesktop(),
    //   ],
    // );
    return NotificationListener(
      onNotification: updateOffsetAccordingToScroll,
      child: Stack(
        children: [
          //HomePage(),
          Positioned(
            top: -0.25 * offset,
            child: HomeDesktop(),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: screenSize.height,
                ),
                AboutDesktop(),
                SkillsDesktop(),
                ProjectDesktop(),
                ContactDesktop(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  bool updateOffsetAccordingToScroll(ScrollNotification scrollNotification) {
    setState(() => offset = scrollNotification.metrics.pixels);
    return true;
  }
}
