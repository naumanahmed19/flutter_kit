import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_kit/Screen/Auth/ResetPasswordScreen.dart';
import 'package:flutter_kit/Widgets/Common/BaseColorButton.dart';
import 'package:flutter_kit/Widgets/Common/EmailField.dart';
import 'package:flutter_kit/Widgets/Common/InputRow.dart';
import 'package:flutter_kit/Widgets/Common/LogoWidget.dart';
import 'package:flutter_kit/Widgets/Common/PasswordField.dart';
import 'package:flutter_kit/Widgets/Login/SocialButtonRow.dart';

import 'RegisterScreen.dart';

class LoginScreen2 extends StatefulWidget {
  @override
  _LoginScreen2State createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 170,
              ),
              Center(child: LogoWidget(height: height, width: width)),
              SizedBox(
                height: height * .040,
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Container(
                  height: height / 15.9,
                  width: width,
                  child: BaseColorButton(
                    title: 'Sign in',
                    pressed: () {
                      if (_formKey.currentState.validate()) {
                        print('ok');
                      }
                    },
                  ),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ResetPasswordScreen()));
                        },
                        child: Text(
                          'forgot password?',
                          style: TextStyle(
                              color: Color(0xFF565fbf), fontFamily: 'Poppins'),
                        )),
                    Text(
                      'or sign in with',
                      style: TextStyle(fontFamily: 'Poppins'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SocialButtonRow(height: height, width: width),
              SizedBox(
                height: height * .1,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                child: Container(
                  height: height / 16,
                  width: width,
                  child: FlatButton.icon(
                    color: Colors.grey.shade200,
                    icon: Icon(
                      Icons.email_outlined,
                      color: Color(0xFF565fbf),
                      size: height / 36.9,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    onPressed: () {
                      // Respond to button press
                    },
                    label: Text("Sign Up with email",
                        style: TextStyle(
                            color: Color(0xFF565fbf), fontFamily: 'Poppins')),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}
