import 'package:ecom_store/consts/consts.dart';
import 'package:ecom_store/widgets_common/applogo_widget.dart';
import 'package:ecom_store/widgets_common/bg_widget.dart';
import 'package:ecom_store/widgets_common/custom_textfield.dart';
import 'package:ecom_store/widgets_common/our_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              applogoWidget(),
              10.heightBox,
              "Login to $appname".text.fontFamily(bold).white.size(18).make(),
              10.heightBox,

              Column(
                children: [
                  customTextField(hint: emailHint, title:email),  
                  customTextField(hint: passwordHint, title:password), 
                  
                  Align
                  ( alignment: Alignment.centerRight,
                    
                    child: TextButton(onPressed: () {}, child: forgetPass.text.make())), 
                    5.heightBox,
                    
                    
                    ourButton
                    (color: redColor, title: login, textColor: whiteColor, onPress: () {}).
                    box.
                    width(context.screenWidth -50)
                    .make(),

                    5.heightBox,
                    createNewAccount1.text.color(fontGrey).make(),
                    5.heightBox,
                    createNewAccount.text.color(fontGrey).make(),
                    5.heightBox,
                    ourButton(color: golden, title: signup, textColor: whiteColor, onPress: () {}).box.width(context.screenWidth - 50).make(),
                    10.heightBox,
                    loginwith.text.color(fontGrey).make(),
                    5.heightBox,
                    
                    
                    
                             ],
              ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth-70).make(),

            ],
          ),
        ),
      )
    );
  }
}