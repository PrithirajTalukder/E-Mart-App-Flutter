import 'package:ecom_store/consts/colors.dart';
import 'package:ecom_store/consts/consts.dart';
import 'package:ecom_store/widgets_common/our_button.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails ({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: title!.text.fontFamily(bold).color(Vx.black).make(),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
        ],
      ),
      body: Column(
        
        children: [
          Expanded(child: Padding(
            padding: EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VxSwiper.builder(itemCount: 3, height: 300, autoPlay: true,
                  aspectRatio: 16 / 9,
                  itemBuilder: (context, index){
                    return Image.asset(imgFc5, width: double.infinity, fit: BoxFit.cover,);
                  }),

                  10.heightBox,

                  title!.text.size(18).color(darkFontGrey).fontFamily(semibold).make(),
                  10.heightBox,
                  VxRating(onRatingUpdate: (value) {},
                  normalColor: textfieldGrey,
                  selectionColor: golden,
                  size: 25,
                  count: 5,
                  stepInt: true,),

                  10.heightBox,
                  "\$300".text.size(18).color(redColor).fontFamily(bold).make(),
                  10.heightBox,

                   Row(children: [
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Seller".text.white.fontFamily(semibold).make(),

                        5.heightBox,
                        "In House Brands".text.fontFamily(semibold).color(darkFontGrey).size(16).make()
                      ],
                    )),
                    CircleAvatar(
                      backgroundColor: whiteColor,
                      child: Icon(Icons.message_rounded, color: darkFontGrey,),
                    )
                  ],).box.color(textfieldGrey).height(70).make()

                ],

              ),
            ),
          )),
          SizedBox(
             width: double.infinity,
             height: 60,
            child: ourButton(
              color: Colors.black,
              onPress: () {},
              textColor: whiteColor,
              title: "Add to cart",
             
            ),
          )
        ],
      ),
    );
  }
}