import 'package:flutter/material.dart';
import 'package:portfolio/Reusable%20components/on_hover_effect.dart';
import '../utils/constants.dart';

class SkillTile extends StatelessWidget {
  final String? imgLoc;
  final String? title;
  final String? subTitle;
  final String? starCount;

  const SkillTile({
    @required this.imgLoc,
    @required this.title,
    @required this.subTitle,
    @required this.starCount,
  });

  @override
  Widget build(BuildContext context) {
    return OnHoverEffect(
      child: Container(
        width: 180.0,
        height: 210.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
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
              height: 5.0,
            ),
            SizedBox(
              child: Image.asset(imgLoc!),
              height: 120,
              width: 120,
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              title!,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
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
      ),
    );
  }
}
