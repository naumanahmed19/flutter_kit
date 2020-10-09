import 'package:flutter/material.dart';
import 'package:flutter_kit/Config/AppRoutes.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({
    Key key,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height / 13.4,
      width: width / 2.5,
      padding: const EdgeInsets.all(8.0),
      child: OutlineButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        borderSide: BorderSide(color: Color(0xFF565fbf)),
        color: Colors.red,
        textColor: Color(0xFF565fbf),
        highlightedBorderColor: Color(0xFF6200EE).withOpacity(0.12),
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.registerRoute);
        },
        child: Text(
          "Sign up",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
