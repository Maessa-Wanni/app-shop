
import 'package:app_shop/model/product_model.dart';
import 'package:app_shop/screens/details/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/item_card.dart';


class ProductGridView extends StatefulWidget {
  final List<Product> products;

  ProductGridView({this.products});

  @override
  _ProductGridViewState createState() => _ProductGridViewState();
}

class _ProductGridViewState extends State<ProductGridView> {

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
        itemCount: widget.products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            mainAxisSpacing: kDefaultPadding,
            crossAxisSpacing: kDefaultPadding),
        itemBuilder: (context, index) => ItemCard(
          product: widget.products[index],
          press: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(
                  product: widget.products[index],
                )),
          ),
        ),
    );
  }
}
