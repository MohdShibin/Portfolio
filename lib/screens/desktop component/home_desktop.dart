import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/styles.dart';
import '../../utils/constants.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenHeight = screenSize.height > 600 ? screenSize.height : 600.0;
//     return Container(
//       height: screenHeight,
//       width: screenSize.width,
//       color: kPrimaryColor,
//       child: Row(
//         children: [
//           buildSocialButtons(),
//           Expanded(
//             flex: 4,
//             child: Padding(
//               padding: const EdgeInsets.only(left: 100.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "____HOLA.I AM",
//                     style: GoogleFonts.lato(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 24,
//                     ),
//                     overflow: TextOverflow.fade,
//                   ),
//                   SizedBox(
//                     height: 24,
//                   ),
//                   RichText(
//                     text: TextSpan(
//                         text: 'M',
//                         style: kNameTextStyle.copyWith(
//                           fontSize: 56.0,
//                         ),
//                         children: [
//                           TextSpan(
//                             text: 'OHAMMED ',
//                             style: kNameTextStyle.copyWith(
//                               fontSize: 50.0,
//                             ),
//                           ),
//                           TextSpan(
//                             text: 'S',
//                             style: kNameTextStyle.copyWith(
//                               fontSize: 56.0,
//                               color: Color(0xffdc2430),
//                             ),
//                           ),
//                           TextSpan(
//                             text: 'HIBIN ',
//                             style: kNameTextStyle.copyWith(
//                               fontSize: 50.0,
//                               color: Color(0xffdc2430),
//                             ),
//                           ),
//                           TextSpan(
//                             text: 'V',
//                           ),
//                         ]),
//                   ),
//                   SizedBox(
//                     height: 14,
//                   ),
//                   Text(
//                     "Computer Science Undergratuate",
//                     style: GoogleFonts.lato(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 24,
//                     ),
//                     overflow: TextOverflow.fade,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Stack(
//             clipBehavior: Clip.hardEdge,
//             children: [
//               SizedBox(
//                 width: 420,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Container(
//                       width: 80,
//                       color: kSecondaryColor,
//                     ),
//                     Container(
//                       width: 80,
//                       color: kSecondaryColor,
//                     ),
//                   ],
//                 ),
//               ),
//               Center(
//                 child: SizedBox(
//                   width: 420,
//                   height: 420,
//                   child: Image.asset('portfolioImg.png', fit: BoxFit.contain),
//                 ),
//               ),
//             ],
//           ),
//           Expanded(
//             flex: 1,
//             child: SizedBox(
//               height: screenSize.height * 0.93,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

    // return Container(
    //   height: screenHeight,
    //   width: screenSize.width,
    //   color: kPrimaryColor,
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //       buildSocialButtons(),
    //       Stack(
    //         clipBehavior: Clip.hardEdge,
    //         children: [
    //           SizedBox(
    //             width: 600,
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               children: [
    //                 Container(
    //                   width: 80,
    //                   color: kSecondaryColor,
    //                 ),
    //                 Container(
    //                   width: 80,
    //                   color: kSecondaryColor,
    //                 ),
    //               ],
    //             ),
    //           ),
    //           Center(
    //             child: SizedBox(
    //               width: 600,
    //               height: 600,
    //               child: Image.asset('profile.png', fit: BoxFit.contain),
    //             ),
    //           ),
    //         ],
    //       ),
    //       SizedBox(
    //         width: 64.0,
    //       )
    //     ],
    //   ),
    // );

    return Container(
      height: screenHeight,
      width: screenSize.width,
      color: kPrimaryColor,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Image.asset('crack.png', fit: BoxFit.fitHeight, height: 30),
          ),
          Positioned(child: buildSocialButtons(), bottom: 0),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 600,
                  height: 450,
                  child: Image.asset('splash1.png', fit: BoxFit.contain),
                ),
                Text(
                  '\n____HOLA.I AM____\n',
                  style: GoogleFonts.play(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                  softWrap: true,
                ),
                Text(
                  'MOHAMMED SHIBIN V',
                  style: GoogleFonts.play(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                  softWrap: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildSocialButtons() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildSocialButton(icon: FontAwesomeIcons.linkedinIn, onClicked: () {}),
        buildSocialButton(icon: FontAwesomeIcons.github, onClicked: () {}),
        buildSocialButton(icon: Icons.mail_rounded, onClicked: () {}),
      ],
    );

Widget buildSocialButton({
  required IconData icon,
  required VoidCallback onClicked,
}) =>
    Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 20),
      child: IconButton(
        icon: FaIcon(
          icon,
          size: 28,
          color: Colors.black,
        ),
        onPressed: onClicked,
      ),
    );
