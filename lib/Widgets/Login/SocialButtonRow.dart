import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_kit/Screen/LoginScreen.dart';

import 'OutilneSocialButton.dart';

class SocialButtonRow extends StatelessWidget {
  const SocialButtonRow({
    Key key,
    @required this.height,
    @required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OutilneSocialButton(
          height: height,
          width: width,
          icon: Icon(
            AntDesign.twitter,
            size: height / 26.9,
          ),
          title: "Twitter",
          pressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          },
        ),
        OutilneSocialButton(
          height: height,
          width: width,
          icon: Icon(
            AntDesign.google,
            size: height / 26.9,
          ),
          title: "Google",
          pressed: () {},
        ),
      ],
    );
  }
}
