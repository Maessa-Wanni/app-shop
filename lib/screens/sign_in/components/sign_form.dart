import 'package:flutter/material.dart';
import 'package:app_shop/components/custom_suffix_icon.dart';
import 'package:app_shop/components/default_botton.dart';
import 'package:app_shop/components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
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
            SizedBox(height: getProportionateScreenWidth(30),),
            buildPasswordFormField(),
            SizedBox(height: getProportionateScreenWidth(30),),
            Row(
              children: [
                Checkbox(
                  value: remember,
                  activeColor: kPrimaryColor,
                  onChanged: (value){
                    setState(() {
                      remember = value;
                    });
                  },
                ),
                Text("Remember me"),
                Spacer(),
                Text("Forget Password" , style: TextStyle(decoration: TextDecoration.underline),)
              ],
            ),
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
    validator: (value){

    },
    decoration: InputDecoration(
      labelText: "Password",
      hintText: "Enter your password",
      suffixIcon:CustomSuffixIcon(svgIcon:"assets/icons/Lock.svg"),
      floatingLabelBehavior: FloatingLabelBehavior.always,
    ),
  );
}





