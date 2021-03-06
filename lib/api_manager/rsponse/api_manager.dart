
import 'package:app_shop/model/product_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../constants.dart';

class ApiManager {
  Future<List<Product>> getProduct(String categoryName) async {
    var client = http.Client();
    List<Product> listOfProducts;
    try {
      var response = await client.get(Strings.baseURL + '$categoryName');
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);
        listOfProducts =
            List<Product>.from(jsonMap.map((model) => Product.fromJson(model)));
        print(listOfProducts);
        // product = Product.fromJson(jsonMap);
      }
    } catch (error) {
      return listOfProducts;
    }
    return listOfProducts;
  }
}
