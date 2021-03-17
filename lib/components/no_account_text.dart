import 'package:app_shop/screens/forgot_password/forgot_password_screen.dart';
import 'package:app_shop/screens/sign_in/components/sign_form.dart';
import 'package:app_shop/screens/sign_in/sign_in_screen.dart';
import 'package:app_shop/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';


class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have any account? ",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(16)
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            "Sign Up",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: kPrimaryColor
            ),
          ),
        ),
      ],
    );
  }
}