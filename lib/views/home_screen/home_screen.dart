import 'package:ecom_store/consts/consts.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(child: Column(
        children: [
          Container(
            color: lightGrey,
            child: TextFormField(
              decoration: const InputDecoration(
                filled: true,
                fillColor: whiteColor,
              ),
            ),
          )
        ],
      )),
      
      
      );
  }
}