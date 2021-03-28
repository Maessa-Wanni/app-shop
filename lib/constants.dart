import 'package:app_shop/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';


const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);

const kPrimaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFA53E),Color(0xFFFF7643)],
);

const kSecondaryColor = Color(0xFF979797);

const kTextColor = Color(0xFF757575);
const kTextLightColor = Color(0xFFACACAC);

const kAnimationDuration = Duration(milliseconds: 200);

const kDefaultPadding = 20.0;


final headingStyle = TextStyle(
    fontSize: getProportionateScreenWidth(28),
    fontWeight: FontWeight.bold,
    color: Colors.black,
    height: 1.5
);


final otpInputDecoration =  InputDecoration(
    contentPadding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(15),
    ),
    enabledBorder: outlineInputBorder(),
    focusedBorder: outlineInputBorder(),
    border: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder(){
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: kTextColor),
    );
}

// Form Error
final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";


class Strings{

  static String baseURL= 'https://fakestoreapi.herokuapp.com/products/category/';
  static String electronicsCategoryName = 'electronics';
  static String womenCategoryName = 'women%20clothing';
  static String menCategoryName = 'men%20clothing';
  static String jeweleryCategoryName = 'jewelery';
}



abstract class FontStyles {
  static const TextStyle titleDetails = TextStyle(
    fontWeight: FontWeight.w600,
    fontFamily: 'Mon',
    fontSize: 15,
      color: Color(0xFF322d2c),
  );

  static const TextStyle descriptionDetails = TextStyle(
    // fontWeight: FontWeight.w600,
    fontFamily: 'Mon',
    fontSize: 12,
    color: Color(0xFF322d2c),
  );

  static const TextStyle pageTitle = TextStyle(
  // fontWeight: FontWeight.w600,
  fontFamily: 'Mon',
  fontSize: 20,
  color: Color(0xFFcbcac2));
}


abstract class GlobalColors {
  //app colors
  static Color whiteColor = Color(0xFFcbcac2);
  static Color brownColor = Color(0xFF322d2c);
  static Color lightBrownColor = Color(0xFF6f5244);
  static Color brownGreyColor = Color(0xFF7b7c7b);
  static Color lightBrownColor2 = Color(0xFF8e6e54);

  // text colors
  static Color blackTextColor = Color(0xFFcbcac2);
  static Color greyTextColor = Color(0xFF322d2c);

  // divider
  static Color dividerColor = Color(0xFF636363);

}

abstract class ShopAppImage {

  static const String splashImage = 'assets/images/splashImage.jpg';
  static const String carousel1 = 'assets/images/carousel1.jpg';
  static const String carousel2 = 'assets/images/carousel2.jpg';
  static const String exploreImage = 'assets/images/explore_back.jpg';
}




