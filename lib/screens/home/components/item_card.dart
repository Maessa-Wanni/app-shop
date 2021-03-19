import 'package:app_shop/model/product.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';



class ItemCard extends StatelessWidget {


  final  product;
  final Function press;

  const ItemCard({
    Key key, this.product, this.press,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(kDefaultPadding),
             //         width: 160,
              //            height: 180,
                decoration: BoxDecoration(
           //         color: Colors.red,
                    borderRadius: BorderRadius.circular(16)
                ),
                child: Image.asset(product.image),
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: kDefaultPadding/4),
              child: Text(
                product.title,
                style: TextStyle(color: kTextColor),),
            ),
            Text(
              "\$${product.price}",
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            )
          ]

      ),
    );
  }
}
