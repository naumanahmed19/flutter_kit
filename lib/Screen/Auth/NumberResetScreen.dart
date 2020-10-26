import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_kit/Screen/Auth/PinVerificationScreen.dart';
import 'package:flutter_kit/Widgets/Common/BaseContainer.dart';
import 'package:flutter_kit/Widgets/Common/BaseIconContainer.dart';
import 'package:flutter_kit/Widgets/Common/BaseColorButton.dart';
import 'package:flutter_kit/Widgets/Common/EmailField.dart';
import 'package:flutter_kit/Widgets/Common/InputRow.dart';
import 'package:flutter_kit/Widgets/Common/NumberField.dart';

class NumberResetScreen extends StatelessWidget {
  const NumberResetScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color(0xFFf9fafb),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: BaseIconContainer(
                  icon: Icon(Icons.arrow_back_ios_rounded),
                ),
              ),
              SizedBox(height: 50),
              Expanded(
                child: BaseContainer(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.037,
                        ),
                        Text(
                          'Verification',
                          style: TextStyle(
                              fontSize: height / 26.9,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            'Please enter Verification code\n   we sent to your number.',
                            style: Theme.of(context).textTheme.title),
                        SizedBox(
                          height: height * .020,
                        ),
                        InputRow(
                          height: height / 11.4,
                          width: width / 6.7,
                          icon: Icon(
                            SimpleLineIcons.phone,
                            color: Color(0xFF565fbf),
                            size: height / 26.9,
                          ),
                          inputField: NumberField(),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 20),
                          child: Container(
                            height: height / 15.9,
                            width: width,
                            child: BaseColorButton(
                              title: 'Done',
                              pressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PinVerifcationScreen()));
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
