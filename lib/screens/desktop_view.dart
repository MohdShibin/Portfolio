import 'package:flutter/material.dart';
import 'package:portfolio/screens/desktop%20component/contact_desktop.dart';
import 'package:portfolio/screens/desktop%20component/project_desktop.dart';
import 'package:portfolio/screens/desktop%20component/skills_desktop.dart';
import 'package:portfolio/screens/main_page.dart';
import '../Reusable components/gradient_button.dart';
import '../screens/desktop component/home_desktop.dart';
import '../screens/desktop component/about_desktop.dart';
import '../utils/styles.dart';

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
    return Scaffold(
      appBar: offset > screenSize.height ? PreferredSize(
          preferredSize: Size(screenSize.width, 1000),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Row(
              children: [
                Image.asset(
                  'crack.png',
                  fit: BoxFit.fitHeight,
                  height: 30,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MenuButton(
                        title: 'HOME',
                      ),
                      SizedBox(width: screenSize.width / 25),
                      MenuButton(
                        title: 'ABOUT',
                      ),
                      SizedBox(width: screenSize.width / 25),
                      MenuButton(
                        title: 'SKILLS',
                      ),
                      SizedBox(width: screenSize.width / 25),
                      MenuButton(
                        title: 'PROJECTS',
                      ),
                      SizedBox(width: screenSize.width / 25),
                      MenuButton(
                        title: 'CONTACT',
                      ),
                    ],
                  ),
                ),
                GradientButton(title: 'HIRE ME', onTap: () {}),
              ],
            ),
          )):null,
      body: NotificationListener(
        onNotification: updateOffsetAccordingToScroll,
        child: Stack(
          children: [
            Positioned(
              top: -0.25 * offset,
              child: const HomeDesktop(),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: screenSize.height),
                  const AboutDesktop(),
                  SkillsDesktop(),
                  ProjectDesktop(),
                  const ContactDesktop(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool updateOffsetAccordingToScroll(ScrollNotification scrollNotification) {
    setState(() => offset = scrollNotification.metrics.pixels);

    return true;
  }
}

class MenuButton extends StatelessWidget {
  final String title;
  const MenuButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(
        title,
        style: kMenuTextStyle,
      ),
    );
  }
}
