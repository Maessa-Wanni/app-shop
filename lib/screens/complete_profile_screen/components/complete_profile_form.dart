import 'package:app_shop/components/custom_suffix_icon.dart';
import 'package:app_shop/components/default_botton.dart';
import 'package:app_shop/components/form_error.dart';
import 'package:app_shop/screens/otp/opt_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {

  final _formKey = GlobalKey<FormState>();
  String firstName;
  String secondName;
  String phoneNumber;
  String address;
  final List<String> errors = [];

  void addError({String error}){
    if(!errors.contains(error)){
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String error}){
    if(errors.contains(error)){
      setState(() {
        errors.remove(error);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            buildFirstNameFormField(),
            SizedBox(height: getProportionateScreenWidth(30),),
            buildLastNameFormField(),
            SizedBox(height: getProportionateScreenWidth(30),),
            buildPhoneNumberFormField(),
            SizedBox(height: getProportionateScreenWidth(30),),
            buildAddressFormField(),
            FormError(errors: errors),
            SizedBox(height: getProportionateScreenWidth(40),),
            DefualtBotton(
              text:"Continue",
              press: (){
                if(_formKey.currentState.validate()){
                  Navigator.pushNamed(context, OptScreen.routeName);
                }
              },
            )
          ],
        ));
  }

  TextFormField buildFirstNameFormField(){
    return TextFormField(
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value){
        if(value.isNotEmpty){
          removeError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      validator: (value){
        if(value.isEmpty){
          addError(error: kNamelNullError);
          return "";
        }

        return null;
      },
      decoration: InputDecoration(
        labelText: "First Name",
        hintText: "Enter your first name",
        suffixIcon:CustomSuffixIcon(svgIcon:"assets/icons/User.svg"),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
  TextFormField buildLastNameFormField(){
    return TextFormField(
      onSaved: (newValue) => secondName = newValue,
      decoration: InputDecoration(
        labelText: "Last Name",
        hintText: "Enter your last name",
        suffixIcon:CustomSuffixIcon(svgIcon:"assets/icons/User.svg"),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
  TextFormField buildPhoneNumberFormField(){
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => phoneNumber = newValue,
      onChanged: (value){
        if(value.isNotEmpty){
          removeError(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      validator: (value){
        if(value.isEmpty){
          addError(error: kPhoneNumberNullError);
          return "";
        }

        return null;
      },
      decoration: InputDecoration(
        labelText: "Phone Number",
        hintText: "Enter your phone number",
        suffixIcon:CustomSuffixIcon(svgIcon:"assets/icons/Phone.svg"),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
  TextFormField buildAddressFormField(){
    return TextFormField(
      onSaved: (newValue) => address = newValue,
      onChanged: (value){
        if(value.isNotEmpty){
          removeError(error: kAddressNullError);
          return "";
        }
        return null;
      },
      validator: (value){
        if(value.isEmpty){
          addError(error: kAddressNullError);
          return "";
        }

        return null;
      },
      decoration: InputDecoration(
        labelText: "Address",
        hintText: "Enter your address",
        suffixIcon:CustomSuffixIcon(svgIcon:"assets/icons/Location point.svg"),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }


}