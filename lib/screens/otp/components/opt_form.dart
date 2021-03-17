import 'package:app_shop/components/default_botton.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class OptForm extends StatefulWidget {
  @override
  _OptFormState createState() => _OptFormState();
}

class _OptFormState extends State<OptForm> {
  FocusNode pin2Focusnode;
  FocusNode pin3Focusnode;
  FocusNode pin4Focusnode;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pin2Focusnode = FocusNode();
    pin3Focusnode = FocusNode();
    pin4Focusnode = FocusNode();

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pin2Focusnode.dispose();
    pin3Focusnode.dispose();
    pin4Focusnode.dispose();
  }

  void nextField({String value, FocusNode focusNode }){

    if(value.length == 1){
      focusNode.requestFocus();
    }

  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value){
                    nextField(value: value,focusNode: pin2Focusnode);
                  },

                ),
              ),
              SizedBox(

                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin2Focusnode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value){
                    nextField(value: value,focusNode: pin3Focusnode);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin3Focusnode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value){
                    nextField(value: value,focusNode: pin4Focusnode);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin4Focusnode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value){
                    pin4Focusnode.unfocus();
                  },
                ),
              )
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight*0.15,),
          DefualtBotton(
            text: "Continue",
            press: (){

            },
          )
        ],

      ),

    );
  }
}
