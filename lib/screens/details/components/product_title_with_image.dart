import 'package:app_shop/model/product_model.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';


class ProductTitleWithImage extends StatelessWidget {
  ProductTitleWithImage({
    Key key,
    @required this.product
  }):super(key: key);

  Product product;


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: kDefaultPadding),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.category.toString(),
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context).textTheme.headline4.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: kDefaultPadding,),
          Row(
            children: [
              RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                          text:"Price",
                        ),
                        TextSpan(
                          text:"\$${product.price}",
                          style: Theme.of(context).textTheme.headline4.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold
                          ),
                        ),
                      ]
                  )),
              SizedBox(width: kDefaultPadding,),
              Expanded(
                  child: Hero(
                    tag: "${product.id}",
                    child: Image.network(
                      product.image,
                      fit:BoxFit.fill ,
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
