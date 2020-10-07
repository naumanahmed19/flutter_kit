import 'package:flutter/material.dart';
import 'package:flutter_kit/Widgets/Common/BaseImage.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: [
        BaseImage(
          height: height / 2,
          width: width,
          imageUrl: 'assets/bgregister.jpg',
        )
      ],
    ));
  }
}
