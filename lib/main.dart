import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'Screen/HomeScreen.dart';

void main() {
  runApp(MyApp());
}
// void main() => runApp(
//       DevicePreview(
//         // enabled: !kReleaseMode,
//         builder: (context) => MyApp(),
//       ),
//     );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
// locale: DevicePreview.of(context).locale, // <--- /!\ Add the locale
//     builder: DevicePreview.appBuilder, // <--- /!\ Add the builder
//     home: HomeScreen(),
