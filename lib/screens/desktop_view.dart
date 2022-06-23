import 'package:flutter/material.dart';
import '../screens/desktop component/home_desktop.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenHeight = screenSize.height > 600 ? screenSize.height * 0.93 : 600.0;
    return SingleChildScrollView(
      child: Column(
        children: [
          const HomeDesktop(),
          SizedBox(
            height: screenHeight,
            width: screenSize.width,
            child: Row(),
          )
        ],
      ),
    );
  }
}

