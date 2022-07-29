import 'package:flutter/material.dart';
import '../../utils/constants.dart';

class ProjectTile extends StatelessWidget {
  final String? imgLoc;
  final IconData? icon;

  const ProjectTile({@required this.imgLoc,@required this.icon});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {},
      hoverColor: kSecondaryColor,
      child: Container(
        padding: const EdgeInsets.only(bottom: 10.0),
        height: 250,
        width: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(imgLoc!, fit: BoxFit.fitWidth),
            Icon(
              icon,
              color: Colors.white,
              size: 44.0,
            ),
          ],
        ),
      ),
    );
  }
}
