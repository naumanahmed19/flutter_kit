import 'package:flutter/material.dart';

class BaseContainer extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  BaseContainer({this.child, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        child: child,
      ),
    );
  }
}
