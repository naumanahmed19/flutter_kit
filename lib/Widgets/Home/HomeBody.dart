import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_kit/Config/AppRoutes.dart';
import 'package:flutter_kit/Screen/LoginScreen.dart';
import 'package:flutter_kit/Widgets/Common/ColorButton.dart';
import 'package:flutter_kit/Widgets/Common/FlatIconButton.dart';
import 'package:flutter_kit/Widgets/Common/LogoWidget.dart';

import 'SignupButton.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key key,
    @required this.height,
    @required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: height,
      width: width,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: height / 10.3,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LogoWidget(height: height, width: width),
            ),
            SizedBox(
              height: height / 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Create Your \nUnique Project',
                style: TextStyle(
                    fontSize: height / 26.9,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                style: TextStyle(
                  fontSize: height / 53.9,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            SizedBox(
              height: height * .051,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SignupButton(
                  width: width,
                  height: height,
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  height: height / 13.4,
                  width: width / 2.5,
                  child: SignInButton(
                    title: 'Sign in',
                    pressed: () {
                      Navigator.pushNamed(context, AppRoutes.loginRoute2);
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                height: height / 16,
                width: width / 1.3,
                child: FlatIconButton(
                  icon: Icon(
                    AntDesign.apple1,
                    color: Color(0xFF565fbf),
                    size: height / 36.9,
                  ),
                  title: "Sign in with Apple",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
