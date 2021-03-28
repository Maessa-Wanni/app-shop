
import 'package:app_shop/screens/home/categories/Electronics.dart';
import 'package:app_shop/screens/home/categories/Jewelery.dart';
import 'package:app_shop/screens/home/categories/men.dart';
import 'package:app_shop/screens/home/categories/women.dart';
import 'package:app_shop/screens/my_activities/my_activities.dart';
import 'package:app_shop/screens/my_cart/my_cart_screen.dart';
import 'package:app_shop/screens/my_purchses/my_purchses.dart';
import 'package:app_shop/screens/setting_screen/setting%20screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../../constants.dart';

class ProductsScreen extends StatefulWidget {
  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int currentIndex = 0;
  int index = 0;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchCategory();

    _tabController = TabController(length: 4, vsync: this);
  }

  List<String> choices = [];

  Future fetchCategory() async {
    List<String> finalCategoryList = [];
    http
        .get('https://fakestoreapi.herokuapp.com/products/categories')
        .then((http.Response response) async {
      var category = await jsonDecode(response.body);
      print(category);
      print(category.runtimeType);

      finalCategoryList = new List<String>.from(category);

      print(finalCategoryList);
      print(finalCategoryList.runtimeType);
      for (String item in finalCategoryList) {
        setState(() {
          choices.add(item);
        });
      }
      print(choices);
      setState(() => isLoading = false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Scaffold(

      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        leading: Icon(Icons.menu),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        title: Text(
          'Products by categories',
          style: FontStyles.pageTitle,
        ),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: CircularProgressIndicator(

        ),
      ),
    )
        : Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kSecondaryColor,
        title: Text(
          'Products by categories',
          style: FontStyles.pageTitle,
        ),
        bottom: TabBar(
          isScrollable: true,
          tabs: choices
              .map(
                (e) => Tab(
              child: Text(
                e,
                style: TextStyle(
                    fontFamily: 'kanit',
                    color: Colors.black),
              ),
            ),
          )
              .toList(),
          controller: _tabController,
          indicatorColor: Colors.black,
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            DrawerHeader(
              child: Container(
                width: 350,
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/drawer.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: kSecondaryColor,
              ),
              title: Text(
                'Settings',
                style: TextStyle(
                    color: kSecondaryColor,
                    fontFamily: "Mon",
                    fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (ctx) => Setting()));
              },
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_cart_outlined,
                color: kSecondaryColor,
              ),
              title: Text(
                'My Cart',
                style: TextStyle(
                    color: kSecondaryColor,
                    fontFamily: "Mon",
                    fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (ctx) => MyCart()));
              },
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: Icon(
                Icons.account_balance_wallet_outlined,
                color: kSecondaryColor,
              ),
              title: Text(
                'My Purchases',
                style: TextStyle(
                    color: kSecondaryColor,
                    fontFamily: "Mon",
                    fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => MyPurchases()));
              },
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: Icon(
                Icons.list,
                color: kSecondaryColor,
              ),
              title: Text(
                'My Activity',
                style: TextStyle(
                    color: kSecondaryColor,
                    fontFamily: "Mon",
                    fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => MyActivities()));
              },
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: Icon(
                Icons.new_releases_outlined,
                color: kSecondaryColor,
              ),
              title: Text(
                'About Us',
                style: TextStyle(
                    color: kSecondaryColor,
                    fontFamily: "Mon",
                    fontWeight: FontWeight.w600),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ElectronicCategory(),
          JeweleryCategory(),
          MenCategory(),
          WomenCategory(),
        ],
      ),
    );
  }
}