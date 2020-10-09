import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'Config/AppRoutes.dart';
import 'Screen/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: AppRoutes().routes(),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
