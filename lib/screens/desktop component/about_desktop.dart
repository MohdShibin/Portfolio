import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';
import '../../Reusable components/gradient_button.dart';
import '../../utils/styles.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenHeight =
        screenSize.height > 800 ? screenSize.height * 0.93 : 800.0;
    return Container(
      height: screenHeight,
      width: screenSize.width,
      color: kPrimaryColor,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: SizedBox(
              width: 420,
              height: 420,
              child: Image.asset('aboutImg.png', fit: BoxFit.fitHeight),
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'LET ME\nTELL YOU\nWHO AM I!',
                  style: kHeadingTextStyle,
                ),
                SizedBox(
                  height: 22.0,
                ),
                Text(
                  'I am Shibin,\nPursuing B.tech Computer Science and Engineering\nWith Honours in Machine Learning.\n\n',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                GradientButton(title: 'Download CV', onTap: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
