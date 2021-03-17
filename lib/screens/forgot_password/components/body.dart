import 'package:app_shop/components/custom_suffix_icon.dart';
import 'package:app_shop/components/default_botton.dart';
import 'package:app_shop/components/form_error.dart';
import 'package:app_shop/components/no_account_text.dart';
import 'package:app_shop/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child:SingleChildScrollView(
        child:Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
          child:Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight*0.04,),
              Text(
                "Forget Password",
                style: TextStyle(
                fontSize: getProportionateScreenWidth(28),
                color: Colors.black,
                  fontWeight: FontWeight.bold,
               ),
            ),
              Text(
                "Please enter your email and we will send \nyou a link to return to your account",
                textAlign: TextAlign.center,
                ),
              SizedBox(height: SizeConfig.screenHeight*0.1,),
              ForgetPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}


class ForgetPassForm extends StatefulWidget {
  @override
  _ForgetPassFormState createState() => _ForgetPassFormState();
}

class _ForgetPassFormState extends State<ForgetPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
        TextFormField(
        keyboardType: TextInputType.emailAddress,
        onSaved: (newValue) => email = newValue,
        onChanged: (value){
          if(value.isNotEmpty && errors.contains(kEmailNullError)){
            setState(() {
              errors.remove(kEmailNullError);
            });
          }
          else
          if (emailValidatorRegExp.hasMatch(value) &&
              errors.contains(kInvalidEmailError)){
            setState(() {
              errors.remove(kInvalidEmailError);
            });
          }
          return null;
        },
        validator: (value){
          if(value.isEmpty && !errors.contains(kEmailNullError)){
            setState(() {
              errors.add(kEmailNullError);
            });
          }
          else
          if (!emailValidatorRegExp.hasMatch(value) &&
              !errors.contains(kInvalidEmailError)){
            setState(() {
              errors.remove(kInvalidEmailError);
            });
          }
          return null;
         },
        decoration: InputDecoration(
          labelText: "Email",
          hintText: "Enter your email",
          suffixIcon:CustomSuffixIcon(svgIcon:"assets/icons/Mail.svg"),
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
       ) ,
          SizedBox(height: getProportionateScreenHeight(30),),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight*0.1,),
          DefualtBotton(
            text:"Continue",
            press: (){
              if(_formKey.currentState.validate()){

              }
            },
          ),
          SizedBox(height: SizeConfig.screenHeight*0.1,),
          NoAccountText(),
        ],
      ),
    );
  }
}
