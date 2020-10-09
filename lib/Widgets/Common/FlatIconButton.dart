import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class FlatIconButton extends StatelessWidget {
  final String title;
  final Icon icon;
  FlatIconButton({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      color: Color(0xFFf4f5fa),
      icon: icon,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      onPressed: () {
        // Respond to button press
      },
      label: Text(title,
          style: TextStyle(
              color: Color(0xFF565fbf),
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins')),
    );
  }
}
