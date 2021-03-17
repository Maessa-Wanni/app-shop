import 'package:app_shop/components/custom_suffix_icon.dart';
import 'package:app_shop/components/default_botton.dart';
import 'package:app_shop/components/form_error.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';



class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {

  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  String comform_password;
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
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenWidth(30),),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenWidth(30),),
          buildConfPasswordFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenWidth(40),),
          DefualtBotton(
            text: "Continue",
            press: (){
              if(_formKey.currentState.validate()){

              }
            },
          )
        ],
      ),
    );
  }

  TextFormField buildEmailFormField(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value){
        if(value.isNotEmpty){
          removeError(error: kEmailNullError);
          return "";
        }
        else
        if (emailValidatorRegExp.hasMatch(value)){
          removeError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      validator: (value){
        if(value.isEmpty){
          addError(error: kEmailNullError);
          return "";
        }
        else
        if (!emailValidatorRegExp.hasMatch(value)){
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        suffixIcon:CustomSuffixIcon(svgIcon:"assets/icons/Mail.svg"),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildPasswordFormField(){
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value){
        if(value.isNotEmpty){
          removeError(error: kPassNullError);
        }
        else if(value.length >=8 ){
          removeError(error: kShortPassError);
        }
        password = value;
        return null;
      },
      validator: (value){
        if(value.toString().isEmpty) {
          addError(error: kPassNullError);
          return "";
        }
        else if (value.length < 8){
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        suffixIcon:CustomSuffixIcon(svgIcon:"assets/icons/Lock.svg"),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildConfPasswordFormField(){
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => comform_password = newValue,
      onChanged: (value){
        if(password == comform_password){
          removeError(error: kMatchPassError);
        }
        return null;
      },
      validator: (value){
        if(value.toString().isEmpty) {
          return "";
        }
        else if (comform_password != password){
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Confirm Password",
        hintText: "Enter your password",
        suffixIcon:CustomSuffixIcon(svgIcon:"assets/icons/Lock.svg"),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

}




