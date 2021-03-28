
import 'package:app_shop/model/cart.dart';
import 'package:app_shop/util/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../constants.dart';
import 'my_cart_widget.dart';

class MyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final cart = Provider.of<Cart>(context);
    return Scaffold(
      backgroundColor: GlobalColors.whiteColor,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'MyCart',
          style: FontStyles.pageTitle,
        ),
        backgroundColor: GlobalColors.brownColor,
        iconTheme: IconThemeData(color: GlobalColors.whiteColor),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: ScreensHelper.fromHeight(1),
            vertical: ScreensHelper.fromWidth(4)),
        child: Consumer<Cart>(
          builder: (context, cart, child) => ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (ctx, index) {
                return MyCartWidget(
                  id: cart.items.values.toList()[index].id.toString(),
                  title: cart.items.values.toList()[index].title,
                  price: cart.items.values.toList()[index].price,
                  photo: cart.items.values.toList()[index].photo,
                  // isChecked: cart.items.values.toList()[index].isChecked,
                );
              }),
        ),
      ),
      floatingActionButton: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: 1,
              child: Icon(Icons.delete_outline),
              elevation: 20,
              tooltip: 'delete from cart',
              onPressed: () {},
              splashColor: GlobalColors.brownColor,
              hoverColor: GlobalColors.brownColor,
              focusColor: GlobalColors.brownColor,
              foregroundColor: GlobalColors.whiteColor,
              backgroundColor: GlobalColors.brownColor,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              heroTag: 2,
              child: Icon(Icons.monetization_on_outlined),
              elevation: 20,
              tooltip: 'delete from cart',
              onPressed: () {},
              splashColor: GlobalColors.brownColor,
              hoverColor: GlobalColors.brownColor,
              focusColor: GlobalColors.brownColor,
              foregroundColor: GlobalColors.whiteColor,
              backgroundColor: GlobalColors.brownColor,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
