import 'package:app_shop/constants.dart';
import 'package:app_shop/model/product.dart';
import 'package:app_shop/screens/details/details_screen.dart';
import 'package:flutter/material.dart';

import 'categories.dart';
import 'item_card.dart';


class Body extends StatelessWidget {
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
                itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    mainAxisSpacing: kDefaultPadding,
                    crossAxisSpacing: kDefaultPadding
                  ),
                  itemBuilder: (context,index) => ItemCard(
                    product: products[index],
                    press: ()=>Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=>DetailScreen(
                            product: products[index],
                          )
                      )
                    ),
                  )),
            ))


      ],
    );
  }
}
