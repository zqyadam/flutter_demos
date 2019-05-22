import 'package:flutter/material.dart';

class MovableBall extends StatefulWidget {
  @override
  _MovableBallState createState() => _MovableBallState();
}

class _MovableBallState extends State<MovableBall> {
  double move_x = 0;
  double move_y = 0;

  final double boundaryWidth = 300;
  final double boundaryHeight = 600;
  final double ballSize = 60;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: boundaryWidth,
      height: boundaryHeight,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: Colors.grey[200]),
      child: Stack(
        children: <Widget>[
          Positioned(
            left: move_x,
            top: move_y,
            child: GestureDetector(
              onPanUpdate: (e) {
                move_x += e.delta.dx;
                move_y += e.delta.dy;
                if (move_x < 0) {
                  move_x = 0;
                } else if (move_x > (boundaryWidth - ballSize)) {
                  move_x = boundaryWidth - ballSize;
                }

                if (move_y < 0) {
                  move_y = 0;
                } else if (move_y > (boundaryHeight - ballSize)) {
                  move_y = boundaryHeight - ballSize;
                }

                setState(() {});
              },
              child: Container(
                width: ballSize,
                height: ballSize,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(ballSize/2),
                    color: Colors.lightBlue),
              ),
            ),
          )
        ],
      ),
    );
  }
}
