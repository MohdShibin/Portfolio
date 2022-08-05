import 'package:flutter/material.dart';
import '../screens/desktop_view.dart';
import '../screens/mobile_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Material(
    child:  LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 715.0) {
          return DesktopView();
        } else {
          return MobileView();
        }
      },
    ),
    );
  }
}

