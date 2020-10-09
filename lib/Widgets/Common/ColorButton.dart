import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  final Function pressed;
  final String title;
  SignInButton({this.pressed, this.title});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: Color(0xFF565fbf),
      textColor: Colors.white,
      onPressed: pressed,
      child: Text(
        title,
        style: TextStyle(),
      ),
    );
  }
}
