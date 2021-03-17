import 'package:app_shop/login_scuccess/login_scuccess_screen.dart';
import 'package:app_shop/screens/complete_profile_screen/complete_profile_screen.dart';
import 'package:app_shop/screens/forgot_password/forgot_password_screen.dart';
import 'package:app_shop/screens/otp/opt_screen.dart';
import 'package:app_shop/screens/sign_in/sign_in_screen.dart';
import 'package:app_shop/screens/sign_up/sign_up_screen.dart';
import 'package:app_shop/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map <String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName:(context) => LoginSuccessScreen(),
  SignUpScreen.routeName:(context) => SignUpScreen(),
  CompleteProfileScreen.routeName:(context) => CompleteProfileScreen(),
  OptScreen.routeName:(context) => OptScreen(),
};

