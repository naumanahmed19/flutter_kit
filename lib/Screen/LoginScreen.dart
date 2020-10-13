import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_kit/Screen/LoginScreen2.dart';
import 'package:flutter_kit/Widgets/Common/BaseContainer.dart';
import 'package:flutter_kit/Widgets/Common/BaseImage.dart';
import 'package:flutter_kit/Widgets/Common/ColorButton.dart';
import 'package:flutter_kit/Widgets/Common/EmailField.dart';
import 'package:flutter_kit/Widgets/Common/InputRow.dart';
import 'package:flutter_kit/Widgets/Common/LogoWidget.dart';
import 'package:flutter_kit/Widgets/Common/PasswordField.dart';
import 'package:flutter_kit/Widgets/Login/OutilneSocialButton.dart';
import 'package:flutter_kit/Widgets/Login/SocialButtonRow.dart';

import 'RegisterScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    var passKey = GlobalKey<FormFieldState>();
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: [
        BaseImage(
          height: height,
          width: width,
          imageUrl: 'assets/bglogin1.jpg',
        ),
        BaseContainer(
          height: height / 1.65,
          width: width,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.047,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      'Welcome!',
                      style: TextStyle(
                          fontSize: height / 26.9,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: height * .020,
                  ),
                  InputRow(
                    height: height / 13.4,
                    width: width / 6.2,
                    icon: Icon(
                      Icons.email_outlined,
                      color: Color(0xFF565fbf),
                      size: height / 26.9,
                    ),
                    inputField: EmailField(),
                  ),
                  InputRow(
                    height: height / 13.4,
                    width: width / 6.2,
                    icon: Icon(
                      SimpleLineIcons.lock,
                      color: Color(0xFF565fbf),
                      size: height / 26.9,
                    ),
                    inputField: PasswordField(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 20),
                    child: Container(
                      height: height / 15.9,
                      width: width,
                      child: SignInButton(
                        title: 'Continue',
                        pressed: () {
                          if (_formKey.currentState.validate()) {
                            print('ok');
                          }
                        },
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'or sign in with',
                      style: TextStyle(fontFamily: 'Poppins'),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SocialButtonRow(height: height, width: width),
                ],
              ),
            ),
          ),
        ),
        Positioned(
            right: width / 12.5,
            top: height / 3,
            child: LogoWidget(height: height, width: width)),
      ],
    ));
  }
}
