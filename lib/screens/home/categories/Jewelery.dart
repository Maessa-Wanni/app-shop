
import 'package:app_shop/api_manager/rsponse/api_manager.dart';
import 'package:app_shop/model/product_model.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../product_grid_view.dart';



class JeweleryCategory extends StatefulWidget {
  @override
  _JeweleryCategoryState createState() => _JeweleryCategoryState();
}

class _JeweleryCategoryState extends State<JeweleryCategory> {
  Future<List<Product>> _products;
  @override
  void initState() {
    super.initState();

    _products = ApiManager().getProduct(Strings.jeweleryCategoryName);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: FutureBuilder(
        future: _products,
        builder: (ctx, snapshot) {
          if (snapshot.hasError) {
            print(snapshot.error);
          } else if (snapshot.hasData) {
            return ProductGridView(
              products: snapshot.data,
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
