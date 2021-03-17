import 'package:app_shop/constants.dart';
import 'package:app_shop/screens/home/components/search_field.dart';
import 'package:app_shop/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_header.dart';
import 'icon_btn_with_counter.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20),),
            HomeHeader(),
          ],
        ),
      ),
    );
  }
}











