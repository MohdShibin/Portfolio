import 'package:flutter/material.dart';
import '../utils/constants.dart';

class SkillGridTile extends StatelessWidget {
  final String? imgLoc;
  final String? title;
  final String? subTitle;
  final String? starCount;

  const SkillGridTile({
    @required this.imgLoc,
    @required this.title,
    @required this.subTitle,
    @required this.starCount,
  });

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenHeight =
        screenSize.height > 600 ? screenSize.height * 0.92 : 600.0;
    return Container(
      width: 180.0,
      height: 200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: kPrimaryColor,
        boxShadow: [
          BoxShadow(
            color: kSecondaryColor,
            spreadRadius: 2.0,
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            child: Image.asset(imgLoc!),
            height: 100,
            width: 100,
          ),
          Text(
            title!,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            subTitle!,
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(starCount!),
        ],
      ),
    );
  }
}
