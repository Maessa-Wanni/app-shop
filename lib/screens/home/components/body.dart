import 'package:app_shop/constants.dart';
import 'package:app_shop/contollers/product_contoller.dart';
import 'package:app_shop/model/product.dart';
import 'package:app_shop/screens/details/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'categories.dart';
import 'item_card.dart';


class Body extends StatelessWidget {

  final ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
              "Products by categories",
            style: Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.bold),
              ),
        ),
        Categories(),
        Expanded(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: GridView.builder(
                itemCount: productController.productList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    mainAxisSpacing: kDefaultPadding,
                    crossAxisSpacing: kDefaultPadding
                  ),
                  itemBuilder: (context,index) => ItemCard(
                    product: productController.productList[index],
                    press: ()=>Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=>DetailScreen(
                            product: productController.productList[index],
                          )
                      )
                    ),
                  )),
            ))
      ],
    );
  }
}
