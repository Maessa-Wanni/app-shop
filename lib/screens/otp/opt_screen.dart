import 'package:app_shop/screens/otp/components/body.dart';
import 'package:flutter/material.dart';

class OptScreen extends StatelessWidget {
  static String routeName = "/opt";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OPT Verification"),
      ),
      body: Body(),
    );
  }
}
