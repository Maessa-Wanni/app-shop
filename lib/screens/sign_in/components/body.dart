import 'package:app_shop/components/custom_suffix_icon.dart';
import 'package:app_shop/components/default_botton.dart';
import 'package:app_shop/components/form_error.dart';
import 'package:app_shop/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: [
                Text("Welcome Back" ,
                   style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
                ),
                Text("Sign in with your email and password \nor continue with social media ",
                textAlign: TextAlign.center,
                ),
                SignForm(),
              ],
            ),
          ),
        )
    );
  }
}

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;

  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column (
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenWidth(20),),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenWidth(20),),
          FormError(errors: errors),
          DefualtBotton(
            text: "continue",
            press: (){
               if(_formKey.currentState.validate()){
                 _formKey.currentState.save();
               }
            },
          )
        ],
        )
    );
  }
}

TextFormField buildEmailFormField(){
  return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: (value) {

      if (value.isEmpty) {
        setState() {

        }
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
      decoration: InputDecoration(
      labelText: "Password",
      hintText: "Enter your password",
      suffixIcon:CustomSuffixIcon(svgIcon:"assets/icons/Lock.svg"),
      floatingLabelBehavior: FloatingLabelBehavior.always,
    ),
  );
}




