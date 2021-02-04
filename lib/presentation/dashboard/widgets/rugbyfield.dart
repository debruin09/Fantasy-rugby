import 'package:flutter/material.dart';
import 'dart:math' as math;

class RugbyField extends StatelessWidget {
  const RugbyField();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Container(
              height: 3.0,
              width: double.infinity,
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 10.0,
            right: 50.0,
            child: Transform.rotate(
              angle: -math.pi * 0.5,
              child: Text(
                "10",
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
            ),
          ),
          Positioned(
            top: 10.0,
            left: 50.0,
            child: Transform.rotate(
              angle: -math.pi * 0.5,
              child: Text(
                "10",
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Container(
              height: 3.0,
              width: double.infinity,
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 150.0,
            right: 50.0,
            child: Transform.rotate(
              angle: -math.pi * 0.5,
              child: Text(
                "22",
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
            ),
          ),
          Positioned(
            top: 150.0,
            left: 50.0,
            child: Transform.rotate(
              angle: -math.pi * 0.5,
              child: Text(
                "22",
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              height: 3.0,
              width: double.infinity,
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 270.0,
            right: 45.0,
            child: Transform.rotate(
              angle: -math.pi * 0.5,
              child: Text(
                "50",
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
            ),
          ),
          Positioned(
            top: 270.0,
            left: 45.0,
            child: Transform.rotate(
              angle: -math.pi * 0.5,
              child: Text(
                "50",
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400.0),
            child: Container(
              height: 3.0,
              width: double.infinity,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
