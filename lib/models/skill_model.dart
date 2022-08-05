import 'package:flutter/cupertino.dart';

class SkillModel {
  final String? title;
  final String? subTitle;
  final String? imageURL;
  final String? starCount;

  SkillModel({this.title, this.imageURL, this.starCount, this.subTitle});
}

List<SkillModel> skills = [
  SkillModel(
      imageURL : 'cppjava.jpg',
      title: 'CPP/JAVA',
      subTitle: 'subtitle',
      starCount: '* * * *',
  ),
];
