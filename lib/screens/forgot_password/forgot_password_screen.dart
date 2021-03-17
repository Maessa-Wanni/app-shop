import 'package:app_shop/screens/forgot_password/components/body.dart';
import 'package:flutter/material.dart';


class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forget Password"),
      ),
      body: Body(),
    );
  }
}
