import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_kit/Screen/Auth/NumberResetScreen.dart';
import 'package:flutter_kit/Widgets/Common/BaseContainer.dart';
import 'package:flutter_kit/Widgets/Common/BaseImage.dart';
import 'package:flutter_kit/Widgets/Common/BaseColorButton.dart';
import 'package:flutter_kit/Widgets/Common/EmailField.dart';
import 'package:flutter_kit/Widgets/Common/InputRow.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          BaseImage(
            height: height / 1.6,
            width: width,
            imageUrl: 'assets/bgresetScreen.jpg',
          ),
          BaseContainer(
            height: height / 1.8,
            width: width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.037,
                  ),
                  Text(
                    'Reset Password',
                    style: TextStyle(
                        fontSize: height / 26.9,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Enter your email and we'
                    'll send you \n   a link to reset your password.',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(
                    height: height * .020,
                  ),
                  InputRow(
                    height: height / 11.4,
                    width: width / 6.7,
                    icon: Icon(
                      Icons.email_outlined,
                      color: Color(0xFF565fbf),
                      size: height / 26.9,
                    ),
                    inputField: EmailField(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 20),
                    child: Container(
                      height: height / 15.9,
                      width: width,
                      child: BaseColorButton(
                        title: 'Send reset link',
                        pressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NumberResetScreen()));
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 25, vertical: 3),
                    child: Container(
                        height: height / 15.9,
                        width: width,
                        child: OutlineButton.icon(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            borderSide: BorderSide(color: Color(0xFF565fbf)),
                            color: Colors.red,
                            textColor: Color(0xFF565fbf),
                            highlightedBorderColor:
                                Color(0xFF6200EE).withOpacity(0.12),
                            onPressed: () {},
                            icon: Icon(
                              AntDesign.leftcircle,
                              color: Color(0xFF565fbf),
                            ),
                            label: Text('Back to Sign in'))),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
