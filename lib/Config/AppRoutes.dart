/*
 * AppRoutes
 * 
 * Define all routes for our app. We can access route
 * name as [AppRoutes.myRouteName]  anywhere in our app
 * Add or remove routes according to your requiremnts
 *  
 */

import 'package:flutter/material.dart';
import 'package:flutter_kit/Screen/Auth/LoginScreen.dart';
import 'package:flutter_kit/Screen/Auth/LoginScreen2.dart';
import 'package:flutter_kit/Screen/Auth/RegisterScreen.dart';

class AppRoutes {
  static const loginRoute = '/loginRoute';
  static const registerRoute = '/registerRoute';
  static const loginRoute2 = '/loginRoute2';

  Map<String, WidgetBuilder> routes() {
    return {
      loginRoute: (context) => LoginScreen(),
      loginRoute2: (context) => LoginScreen2(),
      registerRoute: (context) => RegisterScreen(),
    };
  }
}
