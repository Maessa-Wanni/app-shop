import 'package:app_shop/model/product.dart';
import 'package:http/http.dart' as http;
class RemoteServices{

  static var client = http.Client();

  static Future<List<Product>> fetchProducts() async{
    var response = await client.get('https://fakestoreapi.herokuapp.com/products');

    if(response.statusCode == 200){
      var jsonString = response.body;
      return productFromJson(jsonString);
    }
    else{
      return null;
    }

  }


}