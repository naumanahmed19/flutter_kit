import 'package:flutter/material.dart';

class InputRow extends StatelessWidget {
  final double height;
  final double width;

  final Widget inputField;
  final Icon icon;
  InputRow({this.inputField, this.icon, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25, top: 10),
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                  color: Color(0xFFf4f5fa),
                  borderRadius: BorderRadius.circular(10)),
              height: height,
              width: width,
              child: icon),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: inputField,
          ))
        ],
      ),
    );
  }
}
