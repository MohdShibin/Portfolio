import 'package:flutter/material.dart';


class GradientButton extends StatelessWidget {
  String? title;
  VoidCallback? onTap;
  GradientButton({
    @required this.title,
    @required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        child: Text(
          title!,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: LinearGradient(
            colors: const <Color>[
              Color(0xff7b4397),
              Color(0xffdc2430),
            ],
          ),
        ),
      ),
    );
  }
}
