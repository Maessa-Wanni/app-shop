import 'package:app_shop/constants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/categories.dart';
import 'components/home.dart';


class HomeScreen extends StatelessWidget {
  static String routeName = "/home";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductsScreen(),
    );
  }
}

AppBar buildAppBar(){
  return AppBar(
    backgroundColor: Colors.white ,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/Back ICon.svg"),
      onPressed: (){},
    ),
    actions: [
      IconButton(
        icon: SvgPicture.asset(
          "assets/icons/Search Icon.svg",
          color: kTextColor,),
        onPressed: (){},
      ),
      IconButton(
        icon: SvgPicture.asset(
          "assets/icons/Cart Icon.svg",
          color: kTextColor,),
        onPressed: (){},
      )
    ],
  );
}
