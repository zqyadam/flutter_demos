import 'package:flutter/material.dart';

class HeartbeatAnimationDemo extends StatefulWidget {
  @override
  _HeartbeatAnimationDemoState createState() => _HeartbeatAnimationDemoState();
}

class _HeartbeatAnimationDemoState extends State<HeartbeatAnimationDemo>
    with TickerProviderStateMixin {
  AnimationController controller;
  CurvedAnimation curve;
  Animation<double> sizeAnimation;
  Animation colorAnimation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 550));
    curve = CurvedAnimation(
        parent: controller,
        curve: Curves.bounceIn,
        reverseCurve: Curves.bounceOut);
    sizeAnimation = Tween<double>(begin: 24, end: 100).animate(curve);
    colorAnimation =
        ColorTween(begin: Colors.red, end: Colors.red[800]).animate(curve);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return HeartbeatAnimationWidget(
      animations: [sizeAnimation, colorAnimation],
      controller: controller,
    );
  }
}

class HeartbeatAnimationWidget extends AnimatedWidget {
  final List<Animation> animations;
  final AnimationController controller;

  HeartbeatAnimationWidget({this.animations, this.controller})
      : super(listenable: controller) {
    controller.addStatusListener((AnimationStatus status) {
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
    this.controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.favorite,
      size: animations[0].value,
      color: animations[1].value,
    );
  }
}
