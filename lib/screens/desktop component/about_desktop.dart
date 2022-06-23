import 'package:flutter/material.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenHeight =
        screenSize.height > 600 ? screenSize.height * 0.93 : 600.0;
    return SizedBox(
      height: screenHeight,
      width: screenSize.width,
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              width: 420,
              height: 420,
              child: Image.asset('aboutImg.png'),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'WHO AM I ?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32.0,
                  ),
                ),
                SizedBox(
                  height: 22.0,
                ),
                Text(
                  'I am Shibin, A Coding Enthusiast\nPursuing B.tech Computer Science and Engineering\nWith Honours in Machine Learning.',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                  
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
