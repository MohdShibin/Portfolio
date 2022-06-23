import 'package:flutter/material.dart';
import 'package:portfolio/utils/styles.dart';
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
    return Scaffold(
      backgroundColor: const Color(0xffEDF1FD),
      appBar: PreferredSize(
          preferredSize: Size(screenSize.width,1000),
          child:Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
            child: Row(
              children: [
                Text('S'),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MenuButton(title: 'HOME',),
                      SizedBox(width: screenSize.width / 25),
                      MenuButton(title: 'ABOUT ME',),
                      SizedBox(width: screenSize.width / 25),
                      MenuButton(title: 'SKILLS',),
                      SizedBox(width: screenSize.width / 25),
                      MenuButton(title: 'PROJECTS',),
                      SizedBox(width: screenSize.width / 25),
                      MenuButton(title: 'CONTACT ME',),
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    child: Text(
                      "HIRE ME",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 10.0),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        colors: const <Color> [
                          Color(0xff7b4397),
                          Color(0xffdc2430),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
      ),
      body: LayoutBuilder(
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

class MenuButton extends StatelessWidget {
  final String title;
  const MenuButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Text(
          title,
        style: kMenuTextStyle,
      ),
    );
  }
}
