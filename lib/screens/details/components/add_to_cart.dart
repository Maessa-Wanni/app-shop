import 'package:app_shop/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';


class AddToCart extends StatelessWidget {

  const AddToCart({Key key, this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: kDefaultPadding),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border:Border.all(color: kPrimaryColor)
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                "assets/icons/Cart Icon.svg",
                color: kPrimaryColor,
              ),
              onPressed: (){},
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)
                ),
                color: kPrimaryColor,
                onPressed: (){},
                child: Text(
                  "Buy Now".toUpperCase(),
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),

                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}