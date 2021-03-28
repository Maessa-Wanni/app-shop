import 'package:flutter/cupertino.dart';

import 'cart_item.dart';

class Cart extends ChangeNotifier {
  Map<String, CartItem> _items = {};

  int get count {
    return _items.length;
  }

  Map<String, CartItem> get items {
    return {..._items};
  }

  void addItem(String image, double price, String title, String productId,
      ) {
    _items.putIfAbsent(
        productId,
        () => CartItem(
              photo: image,
              price: price,
              title: title,
            ));
    notifyListeners();
  }

  void removeItem(String productId) {
    _items.remove(productId);
    notifyListeners();
  }

  void toggle() {}
}
