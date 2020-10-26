import 'package:flutter/material.dart';

class OutlineIconContainer extends StatelessWidget {
  final Widget widget;
  final double height;
  final double width;
  OutlineIconContainer({this.widget, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: height == null ? 35 : height,
          width: width == null ? 35 : width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Theme.of(context).primaryColor)),
          child: Center(child: widget)
          //  text == null
          //     ? IconButton(icon: icon, onPressed: pressed)
          //     : Text(text),
          ),
    );
  }
}
