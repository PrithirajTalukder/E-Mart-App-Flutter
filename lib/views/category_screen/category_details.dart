import 'package:ecom_store/widgets_common/bg_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ecom_store/consts/consts.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;

  const CategoryDetails ({Key? key, required this.title}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        title:  title!.text.fontFamily(bold).white.make(),
        iconTheme: const IconThemeData(color: Colors.white),
          
        ),

        body: Container(
            padding: const EdgeInsets.all(12),

            child: Column(children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(6, (index) =>"Baby Clothing". text.fontFamily(semibold).color(darkFontGrey).size(12).makeCentered().box.white.size(120, 60).rounded.margin(EdgeInsets.symmetric(horizontal: 4)).make() )              ),
              ),

              20.heightBox,

              Expanded(child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true, 
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 8, mainAxisExtent: 250, mainAxisSpacing: 8), itemBuilder: (contex, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(imgP5, height: 150, width: 200),
                      10.heightBox,

                      "Women Bags". text. fontFamily(semibold).color(darkFontGrey).make(),
                       10.heightBox,

                       "\$600".text.color(Vx.black).fontFamily(bold).size(16).make(),


                  ],

                

                 
              
                ).box.white.roundedSM.padding(EdgeInsets.all(10)).outerShadowSm.margin(EdgeInsets.symmetric(horizontal: 6)).make();
              }))


            ],),
        )
      );
    
  }
}