import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/constants.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: 400.0,
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
                icon: FontAwesomeIcons.linkedin,
                onTap: (){},
              ),
              ContactButton(
                icon: FontAwesomeIcons.github,
                onTap: (){},
              ),
            ],
          ),
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
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      focusColor: Colors.red,
      highlightColor: Colors.yellow,
      splashColor: Colors.green,
      child: Container(
        margin: EdgeInsets.all(10),
        height: 100.0,
        width: 100.0,
        color: Colors.white,
        child: Icon(
          icon,
          size: 48.0,
        ),
      ),
    );
  }
}
