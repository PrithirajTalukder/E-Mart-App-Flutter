import 'package:ecom_store/consts/consts.dart';
import 'package:ecom_store/consts/lists.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: categories.text.white.fontFamily(bold).make(),
         iconTheme: const IconThemeData(color: Colors.white),
      ),

      body:  Container(
        
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: 9,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 8, crossAxisSpacing: 8, mainAxisExtent:200 ), itemBuilder: (context, index){
          return Column(
              children: [
               Image.asset(featuredCatImages[index], width: 200, height: 120, fit: BoxFit.cover),

               10.heightBox,

               featuredCat[index]. text.fontFamily(semibold).color(darkFontGrey).align(TextAlign.center).make(),

              ],
          ).box.white.rounded.outerShadowSm.clip(Clip.antiAlias).make();
        }),
      ),
    );
  }
}