import 'package:ecom_store/consts/consts.dart';
import 'package:ecom_store/widgets_common/applogo_widget.dart';
import 'package:ecom_store/widgets_common/bg_widget.dart';
import 'package:ecom_store/widgets_common/custom_textfield.dart';
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
              "Login in to $appname".text.fontFamily(bold).white.size(18).make(),
              10.heightBox,

              Column(
                children: [
                  customTextField(),             ],
              ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth-70).make(),

            ],
          ),
        ),
      )
    );
  }
}