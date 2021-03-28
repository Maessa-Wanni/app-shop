import 'package:app_shop/constants.dart';
import 'package:app_shop/model/product_model.dart';
import 'package:app_shop/screens/details/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class DetailScreen extends StatelessWidget {
  static String routeName = "/detail";
  final Product product;

  const DetailScreen(
      {Key key, this.product}
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  //    backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product,),
    );
  }
}

AppBar buildAppBar(BuildContext context){

  return AppBar(
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset(
        "assets/icons/back.svg",
        color: Colors.white,
      ),
      onPressed:()=> Navigator.pop(context) ,
    ),
    actions: [
      IconButton(icon: SvgPicture.asset("assets/icons/search.svg"), onPressed: (){}),
      IconButton(icon: SvgPicture.asset("assets/icons/cart.svg"), onPressed: (){}),
      SizedBox(width: kDefaultPadding/2,)
    ],
  );

}
