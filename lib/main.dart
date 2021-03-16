import 'package:app_shop/constants.dart';
import 'package:app_shop/screens/splash/splash_screen.dart';
import 'package:app_shop/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_shop/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HI There',
      debugShowCheckedModeBanner: false,
      theme: theme(),
     // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes:routes,
    );
  }
}


