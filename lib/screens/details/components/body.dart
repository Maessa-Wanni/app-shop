import 'package:app_shop/constants.dart';
import 'package:app_shop/model/product_model.dart';
import 'package:app_shop/screens/details/components/cart_counter.dart';
import 'package:app_shop/screens/details/components/product_title_with_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'add_to_cart.dart';
import 'counter_with_fav_btn.dart';
import 'description.dart';


class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height*0.3),
                  padding: EdgeInsets.only(
                    top: size.height *0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding
                  ),
                  height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24)
                  )
                ),
                  child: Column(
                    children: [
                      Description(product: product),
                      SizedBox(height: kDefaultPadding/2,),
                      CounterWithFavBtn(),
                      SizedBox(height: kDefaultPadding/2,),
                      AddToCart()
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}







