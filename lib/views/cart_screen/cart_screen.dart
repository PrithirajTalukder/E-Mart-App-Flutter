import 'package:ecom_store/consts/colors.dart';
import 'package:ecom_store/consts/consts.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: whiteColor,
    child: "This cart is empty".text.color(darkFontGrey).fontFamily(bold).makeCentered(),
    
    
    );
  }
}