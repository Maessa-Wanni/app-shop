import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Product {

  final String image, title,description;
  final int  price,size,id;
  final Color color;

  Product({
  this.image,
  this.title,
  this.description,
  this.price,
  this.size,
  this.id,
  this.color,

 });
}


List<Product> products = [

  Product(
    id:1,
    title: "Apple",
    price: 24,
    size: 10,
    description: "Heliiiiiiiiiiiiiiiiiiii",
    image: "assets/images/apple-pay.png",
    color: Color(0xFF3D82AE)
  ),
];

