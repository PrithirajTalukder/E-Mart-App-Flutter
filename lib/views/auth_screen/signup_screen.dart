import 'package:ecom_store/consts/consts.dart';
import 'package:ecom_store/consts/lists.dart';
import 'package:ecom_store/widgets_common/applogo_widget.dart';
import 'package:ecom_store/widgets_common/bg_widget.dart';
import 'package:ecom_store/widgets_common/custom_textfield.dart';
import 'package:ecom_store/widgets_common/our_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';


class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  bool? isCheck = false;
@override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(

        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              applogoWidget(),
              10.heightBox,
              "Signup to $appname".text.fontFamily(bold).white.size(18).make(),
              10.heightBox,

              Column(
                children: [
                  customTextField(hint: namehint, title:name),  
                  customTextField(hint: emailHint, title:email), 
                  customTextField(hint: passwordHint, title:password),
                   customTextField(hint: passwordHint, title:resetpassword), 
                  
                
                    
                     Row(
                      children: [
                        
                        Checkbox(
                          checkColor: fontGrey,
                      
                          value: isCheck, 
                          onChanged: (newValue){
                            setState(() {
                              isCheck = newValue;
                            });
                          }),

                          
                    10.widthBox,
                    Expanded(
                      child: RichText(text: const TextSpan(
                        children: [
                          TextSpan(text: " I agree to the ", style: TextStyle(
                            fontFamily: regular,
                            color: fontGrey,
                          )),
                      
                          TextSpan(text: terms, style: TextStyle(
                            fontFamily: regular,
                            color: redColor,
                          )),

                          TextSpan(text: " & ", style: TextStyle(
                            fontFamily: regular,
                            color: fontGrey,
                          )),
                      
                          TextSpan(text: policies, style: TextStyle(
                            fontFamily: regular,
                            color: redColor,
                          ))
                      
                      
                        ],
                      ),),
                    ),
                      ],
                    ),



                    5.heightBox,
                    
                    
                    ourButton
                    (color: isCheck== true? redColor : lightGrey, title: signup, textColor: whiteColor, onPress: () {}).
                    box.
                    width(context.screenWidth -50)
                    .make(),

                   

                   
                    10.heightBox,
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                      acc.text.color(fontGrey).make(),
                      login.text.color(redColor).make().onTap(() {
                        Get.back();
                      })
                    ],)
                    
                 

                    
                    
                             ],
              ).box.white.rounded.padding(const EdgeInsets.all(20)).width(context.screenWidth-70).shadowSm.make(),

            ],
          ),
        ),
      )
    );
  }
}