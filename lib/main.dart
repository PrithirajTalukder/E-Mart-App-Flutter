import 'package:ecom_store/consts/consts.dart';
import 'package:ecom_store/views/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Emart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors. transparent,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Vx.black)),
        fontFamily: regular,
      ),
      home: const SplashScreen(),
    );
  }
}

