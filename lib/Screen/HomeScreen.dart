import 'package:flutter/material.dart';

import 'package:flutter_kit/Widgets/Home/HomeBackground.dart';
import 'package:flutter_kit/Widgets/Home/HomeBody.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    print(height / 1.5);
    print(width);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          child: Stack(
            children: [
              HomeBackground(height: height, width: width),
              HomeBody(height: height, width: width)
            ],
          ),
        ),
      ),
    );
  }
}
