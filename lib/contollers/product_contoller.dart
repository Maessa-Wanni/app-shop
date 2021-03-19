import 'package:app_shop/model/product.dart';
import 'package:app_shop/services/remote_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ProductController extends GetxController{

  @override
  void onInit(){
    fetchProducts();
    super.onInit();
  }
  var productList = List<Product>().obs;

  void fetchProducts () async{

    var products = await RemoteServices.fetchProducts();

    if(products!=null){
      productList.value = products ;
    }
    else
      print("null");

}

}