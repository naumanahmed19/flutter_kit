import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_kit/Screen/Auth/RegisterScreen.dart';

class OutilneSocialButton extends StatelessWidget {
  const OutilneSocialButton(
      {Key key,
      @required this.height,
      @required this.width,
      @required this.title,
      @required this.icon,
      @required this.pressed})
      : super(key: key);

  final double height;
  final double width;
  final String title;
  final Icon icon;
  final Function pressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height / 13.4,
      width: width / 2.3,
      padding: const EdgeInsets.all(8.0),
      child: OutlineButton.icon(
        icon: icon,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        borderSide: BorderSide(color: Color(0xFF565fbf)),
        color: Colors.red,
        textColor: Color(0xFF565fbf),
        highlightedBorderColor: Color(0xFF6200EE).withOpacity(0.12),
        onPressed: pressed,
        label: Text(
          title,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
