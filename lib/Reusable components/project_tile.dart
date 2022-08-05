import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;
import '../../utils/constants.dart';

class ProjectTile extends StatefulWidget {
  final String? imgLoc;
  final IconData? icon;

  const ProjectTile({@required this.imgLoc, @required this.icon});

  @override
  State<ProjectTile> createState() => _ProjectTileState();
}

class _ProjectTileState extends State<ProjectTile>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;
  late Animation<Color?> _colorAnimation;

  late Animation<double> _headTextOpacityAnimation;
  late Animation<double> _subTextOpacityAnimation;

  double height = 600.0;
  double width = 500.0;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this,
        duration: const Duration(
          milliseconds: 750,
        ));

    _rotationAnimation = Tween(begin: math.pi / 2, end: 0.0).animate(
        CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.0, 0.5, curve: Curves.fastOutSlowIn)));

    _colorAnimation = ColorTween(
            begin: const Color(0x00ffffff), end: Colors.black.withOpacity(0.6))
        .animate(
            CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn));

    _headTextOpacityAnimation = Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.4, 0.8, curve: Curves.ease)));

    _subTextOpacityAnimation = Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.7, 1.0, curve: Curves.ease)));

    super.initState();
  }

  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    bool isHovered = false;

    return Flexible(
      child: MouseRegion(
        onEnter: (event) {
          _controller.forward();
        },
        onExit: (event) {
          _controller.reverse();
        },
        child: Container(
          margin: EdgeInsets.all(8),
          height: 250,
          width: screenSize.height/2.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(color: kSecondaryColor),
            boxShadow: [
            BoxShadow(
              color: kSecondaryColor,
              spreadRadius: 2.0,
              blurRadius: 4.0,
            ),
          ],
          ),
          clipBehavior: Clip.antiAlias,
          child: Stack(
            children: [
              Container(
                height: 250,
                width: screenSize.height/2.5,
                color: kPrimaryColor,
                child: Image.asset(
                  widget.imgLoc!,
                  fit: BoxFit.fitWidth,
                  filterQuality: FilterQuality.medium,
                ),
              ),
              Positioned(
                right: 0.0,
                child: SizedBox(
                  height: 250,
                  width: screenSize.height/2.5,
                  child: AnimatedBuilder(
                    animation: _rotationAnimation,
                    builder: (context, child) {
                      return Transform.rotate(
                        angle: _rotationAnimation.value,
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          color: _colorAnimation.value,
                        ),
                      );
                    },
                  ),
                ),
              ),
              Positioned(
                child: SizedBox(
                  height: 250,
                  width: screenSize.height/2.5,
                  child: AnimatedBuilder(
                    animation: _rotationAnimation,
                    builder: (context, child) {
                      return Transform.rotate(
                        angle: _rotationAnimation.value,
                        alignment: Alignment.topRight,
                        child: Container(
                          color: _colorAnimation.value,
                        ),
                      );
                    },
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedBuilder(
                        animation: _headTextOpacityAnimation,
                        builder: (context, child) {
                          return Container(
                            height: 80.0,
                            alignment: Alignment(
                                0.0, _headTextOpacityAnimation.value - 1.1),
                            child: FadeTransition(
                              opacity: _headTextOpacityAnimation,
                              child: Text(
                                'Title',
                                style: GoogleFonts.dancingScript(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 40.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          );
                        }),
                    AnimatedBuilder(
                        animation: _subTextOpacityAnimation,
                        builder: (context, child) {
                          return Container(
                            height: 120.0,
                            alignment: Alignment(
                                0.0, _subTextOpacityAnimation.value - 1.1),
                            child: FadeTransition(
                              opacity: _subTextOpacityAnimation,
                              child: SizedBox(
                                width: width - 100,
                                child: Icon(
                                  widget.icon,
                                  color: Colors.white,
                                  size: 48.0,
                                ),
                              ),
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
