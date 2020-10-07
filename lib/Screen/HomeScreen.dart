import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_kit/Screen/LoginScreen.dart';
import 'package:flutter_kit/Widgets/Common/BaseImage.dart';
import 'package:flutter_kit/Widgets/Common/BaseOverlay.dart';

import 'RegisterScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    print(height);
    print(width);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          child: Stack(
            children: [
              Container(
                height: height,
                width: width,
                child: BaseOverlay(
                  child: BaseImage(
                    height: height,
                    width: width,
                    imageUrl: 'assets/bg3.jpg',
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: height,
                width: width,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: height / 12.3,
                      ),
                      LogoWidget(height: height, width: width),
                      SizedBox(
                        height: height / 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Create Your \nUnique Project',
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters',
                          style: TextStyle(
                            fontSize: 11,
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
                          Container(
                            width: width / 2.5,
                            padding: const EdgeInsets.all(8.0),
                            child: OutlineButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              borderSide: BorderSide(color: Color(0xFF565fbf)),
                              color: Colors.red,
                              textColor: Color(0xFF565fbf),
                              highlightedBorderColor:
                                  Color(0xFF6200EE).withOpacity(0.12),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            RegisterScreen()));
                              },
                              child: Text("Sign Up"),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            width: width / 2.5,
                            child: SignInButton(
                              pressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              },
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Container(
                          width: width / 1.3,
                          child: RaisedButton.icon(
                            color: Color(0xFFf4f5fa),
                            icon: Icon(
                              AntDesign.apple1,
                              color: Color(0xFF565fbf),
                              size: 22,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            onPressed: () {
                              // Respond to button press
                            },
                            label: Text("Sign Up with Apple",
                                style: TextStyle(
                                    color: Color(0xFF565fbf),
                                    fontSize: 17,
                                    fontFamily: 'Poppins')),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SignInButton extends StatelessWidget {
  Function pressed;
  SignInButton({this.pressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      color: Color(0xFF565fbf),
      textColor: Colors.white,
      onPressed: pressed,
      child: Text("Sign in"),
    );
  }
}

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    Key key,
    @required this.height,
    @required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
          height: height / 7.37,
          width: width / 4,
          color: Colors.white,
          child: Center(
            child: Text(
              'P',
              style: TextStyle(fontSize: 75, color: Color(0xFF565fbf)),
            ),
          )),
    );
  }
}
