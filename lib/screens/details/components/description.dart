import 'package:app_shop/model/product_model.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';


class Description extends StatelessWidget {
  Description({
    Key key,
    @required this.product
  }):super(key: key);
  Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding
      ),
      child: Text(
        product.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}