import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_kit/Config/Validation_rules.dart';

class PasswordField extends StatefulWidget {
  final String lable;
  PasswordField({this.lable});
  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool hidePass = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: (value) => validatePassword(value),
        obscureText: hidePass,
        style: TextStyle(color: Color(0xFF565fbf)),
        decoration: InputDecoration(
          labelStyle: TextStyle(fontWeight: FontWeight.bold),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                hidePass = !hidePass;
              });
            },
            icon: Icon(
              AntDesign.eyeo,
              color: Color(0xFF565fbf),
            ),
          ),
          labelText: widget.lable == null ? 'Password' : widget.lable,
        ));
  }
}
