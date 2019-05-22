import 'package:flutter/material.dart';

class HeartbeatOriginal extends StatefulWidget {
  @override
  _HeartbeatOriginalState createState() => _HeartbeatOriginalState();
}

class _HeartbeatOriginalState extends State<HeartbeatOriginal>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> sizeAnimation;
  Animation colorAnimation;
  CurvedAnimation curve;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 550));
    curve = CurvedAnimation(
      parent: controller,
      curve: Curves.easeIn,
    );
    sizeAnimation = Tween<double>(begin: 32, end: 100).animate(curve);
    colorAnimation =
        ColorTween(begin: Colors.red, end: Colors.red[900]).animate(curve);

    controller
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((AnimationStatus status) {
        switch (status) {
          case AnimationStatus.completed:
            controller.reverse();
            break;
          case AnimationStatus.dismissed:
            controller.forward();
            break;
          default:
          // controller.forward();
        }
      });

    controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.favorite,
      size: sizeAnimation.value,
      color: colorAnimation.value,
    );
  }
}
