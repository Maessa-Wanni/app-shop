import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';


class DefualtBotton extends StatelessWidget {
  const DefualtBotton({
    Key key,
    this.press,
    this.text,

  }):super(key: key);

  final Function press;
  final String text;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child:FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: kPrimaryColor,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );

  }
}

