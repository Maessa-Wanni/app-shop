import 'package:app_shop/screens/login_scuccess/login_scuccess_screen.dart';
import 'package:app_shop/screens/forgot_password/forgot_password_screen.dart';
import 'package:flutter/cupertino.dart';
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
                GestureDetector(
                  onTap: ()=>Navigator.pushNamed(context, ForgotPasswordScreen.routeName),
                  child: Text("Forget Password" , style: TextStyle(decoration: TextDecoration.underline),),
                )
              ],
            ),
            SizedBox(height: getProportionateScreenWidth(20),),
            FormError(errors: errors),
            DefualtBotton(
              text: "continue",
              press: (){
                if(_formKey.currentState.validate()){
                  _formKey.currentState.save();
                  Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                }
              },
            )
          ],
        )
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
}









