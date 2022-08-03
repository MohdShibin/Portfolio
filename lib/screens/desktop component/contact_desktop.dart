import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/constants.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: 300.0,
      width: screenSize.width,
      padding: EdgeInsets.symmetric(
        horizontal: screenSize.width / 8.0,
        vertical: 40.0,
      ),
      color: kSecondaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ContactButton(
                icon: Icons.mail,
                onTap: () {},
              ),
              ContactButton(
                icon: FontAwesomeIcons.linkedin,
                onTap: () {},
              ),
              ContactButton(
                icon: FontAwesomeIcons.github,
                onTap: () {},
              ),
              ContactButton(
                icon: FontAwesomeIcons.googlePlay,
                onTap: () {},
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Text('<sbnvgl>'),
          Text('Copyright \u00a9 2022 All rights reserved'),
        ],
      ),
    );
  }
}

class ContactButton extends StatelessWidget {
  final IconData? icon;
  final VoidCallback? onTap;

  const ContactButton({
    @required this.icon,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black45,width: 2.0),
      ),
      child: IconButton(
        onPressed: onTap,
        icon: Icon(icon),
        iconSize: 28,
      ),
    );
  }
}
