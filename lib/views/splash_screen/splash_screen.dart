import 'package:ecom_store/consts/colors.dart';
import 'package:ecom_store/consts/consts.dart';
import 'package:ecom_store/views/auth_screen/login_screen.dart';
import 'package:ecom_store/widgets_common/applogo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

//path to login

  ChangeScreen(){
    Future.delayed( const Duration(seconds: 1), () {
      Get.to(()=> const LoginScreen());
    });
  }

  @override
  void initState() {
    ChangeScreen();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            
              Align(alignment: Alignment.topLeft, child: Image.asset(icSplashBg, width: 300)),
            20.heightBox,
            applogoWidget(),
            appname.text.fontFamily(bold).size(22).white.make(),
            3.heightBox,
            appversion.text.white.make(),
            Spacer(),
            credits.text.white.fontFamily(semibold).make(),
            30.heightBox,

          ],

        ),
      ),
    );
  }
}