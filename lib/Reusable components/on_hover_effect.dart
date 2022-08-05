import 'package:flutter/material.dart';

class OnHoverEffect extends StatefulWidget {
  final Widget? child;
  const OnHoverEffect({@required this.child});

  @override
  State<OnHoverEffect> createState() => _OnHoverEffectState();
}

class _OnHoverEffectState extends State<OnHoverEffect> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()..scale(1.1);
    final transform = isHovered ? hoveredTransform : Matrix4.identity();

    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        //alignment: FractionalOffset.center,
        transformAlignment: FractionalOffset.center,
        duration: Duration(milliseconds: 100),
        transform: transform,
        child: widget.child,
      ),
    );
  }

  void onEntered(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });
}
