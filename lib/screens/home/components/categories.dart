
import 'package:app_shop/screens/home/categories/Electronics.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';


class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}


class _CategoriesState extends State<Categories> {




  List<String> categories = [
    "Electronics",
    "Jewelery",
    "Men clothing",
    "Women clothing"
  ];
  int selectedIndex = 0;

  List<Widget> containCategories = [
    ElectronicCategory(),

  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Products by categories",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
        padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
        child: SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) => bulidCategories(index),
            )),
      ),
        containCategories[selectedIndex],

      ]
    );
  }

  Widget bulidCategories(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        padding:  EdgeInsets.only(top:10),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  categories[index],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selectedIndex == index ? kTextColor : kTextLightColor,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: kDefaultPadding / 4),
                  height: 2,
                  width: 30,
                  color: selectedIndex == index ? Colors.black : Colors.transparent,
                )
              ]),
            ),


          ],
        ),
      ),
    );
  }
}
