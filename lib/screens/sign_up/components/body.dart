import 'package:app_shop/components/custom_suffix_icon.dart';
import 'package:app_shop/components/default_botton.dart';
import 'package:app_shop/components/form_error.dart';
import 'package:app_shop/components/social_card.dart';
import 'package:app_shop/constants.dart';
import 'package:app_shop/screens/sign_up/components/sign_up_form.dart';
import 'package:app_shop/size_config.dart';
import 'package:flutter/material.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight*0.02,),
              Text(
                  "Register Account",
                style: headingStyle,
              ),
              Text(
                "Complete your details or continue \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight*0.07,),
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight*0.07,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocalCard(
                    icon: "assets/icons/google-icon.svg",
                    press: (){

                    },),

                  SocalCard(
                    icon: "assets/icons/facebook-2.svg",
                    press: (){

                    },),
                  SocalCard(
                    icon: "assets/icons/twitter.svg",
                    press: (){
                    },),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20),),
              Text(
                'By continuing your confirm that you agree \nwith our Term and Condition',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.caption,
              )
            ],
          ),
        ),
      ),
    );
  }
}

