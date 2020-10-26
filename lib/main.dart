import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kit/Config/theme.dart';
import 'package:flutter_kit/Screen/catalog/CatalogScreen.dart';

import 'Config/AppRoutes.dart';
import 'Screen/HomeScreen.dart';
import 'Screen/tabBarClass.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(
      DevicePreview(
        // enabled: !kReleaseMode,
        builder: (context) => MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.of(context).locale, // <--- /!\ Add the locale
      builder: DevicePreview.appBuilder, // <--- /!\ Add the builder
      theme: AppTheme.lightTheme,
      routes: AppRoutes().routes(),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
