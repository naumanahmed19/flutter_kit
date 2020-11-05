import 'package:flutter/material.dart';
import 'package:flutter_kit/Config/Validation_rules.dart';

class NameField extends StatefulWidget {
  final String lable;

  NameField({this.lable});

  @override
  _NameFieldState createState() => _NameFieldState();
}

class _NameFieldState extends State<NameField> {
  bool showTickIcon = false;

  Widget getIcon() {
    if (!showTickIcon) {
      return null;
    }
    return IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.done,
        color: Colors.green,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: (val) => validateName(val),
        onChanged: (val) {
          showTickIcon = val.length > 3;
        },
        style: TextStyle(color: Color(0xFF565fbf)),
        decoration: InputDecoration(
          labelStyle: TextStyle(fontWeight: FontWeight.bold),
          suffixIcon: getIcon(),
          labelText: widget.lable == null ? 'Full Name' : widget.lable,
        ));
  }
}
