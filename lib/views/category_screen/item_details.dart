import 'package:ecom_store/consts/colors.dart';
import 'package:ecom_store/consts/consts.dart';
import 'package:ecom_store/consts/lists.dart';
import 'package:ecom_store/consts/strings.dart';
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

                   Row(
                  
                    children: [
                    Expanded(child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Seller".text.white.fontFamily(semibold).make(),

                        5.heightBox,
                        "In House Brands".text.fontFamily(semibold).color(darkFontGrey).size(16).make(),

                       
                      ],
                    )),
                    const CircleAvatar(
                      backgroundColor: whiteColor,
                      child: Icon(Icons.message_rounded, color: darkFontGrey,),
                    )
                  ],).box.color(textfieldGrey).padding(EdgeInsets.symmetric(horizontal: 16)).height(60).make(),

                 20. heightBox,
                        Column(
                          children: [
                            Row(
                              children: [
                            SizedBox(
                              width: 100,
                              child: "Colors :".text.fontFamily(bold).color(darkFontGrey).make(),),

                              Row(children: List.generate(3, (index) => VxBox().size(40, 40).roundedFull.color(Vx.randomPrimaryColor).margin(EdgeInsets.symmetric(horizontal: 4)).make()),)

                              ],
                            ). box. padding(EdgeInsets.all(8)).make(),

                            Row(
                              children: [
                            SizedBox(
                              width: 100,
                              child: "Quantity: ".text.fontFamily(bold).color(darkFontGrey).make(),),

                              Row(children: [
                                IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                                "0".text.fontFamily(bold).size(16).color(darkFontGrey).make(),
                                IconButton(onPressed: () {}, icon: Icon(Icons.add)),

                                10.widthBox,
                                ("0 available").text.color(darkFontGrey).make()

                              ],)

                              ],
                            ). box. padding(EdgeInsets.all(8)).make(),

                            Row(
                              children: [
                            SizedBox(
                              width: 100,
                              child: "Total: ".text.fontFamily(bold).color(darkFontGrey).make(),),

                              "\$0.00".text.size(16).color(redColor).fontFamily(bold).make(),

                              

                              ],
                            ). box. padding(EdgeInsets.all(8)).color(golden).make(),
                          ],
                        ).box.shadowSm.white.make(),


                        20.heightBox,

                        "Description".text.color(darkFontGrey).fontFamily(bold).make(),
                        10.heightBox,
                        "Dummy Description". text.color(darkFontGrey).make(),

                        20.heightBox,

                        ListView(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          children: List.generate(itemDetailButtonsList.length, (index)=> ListTile(
                           title: itemDetailButtonsList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                            trailing: const Icon(Icons.arrow_forward),
                          )),
                        ),

                        20.heightBox,

                        productsyou.text.color(darkFontGrey).fontFamily(bold).size(18).make(),
                        
                         
                         
                         
                         
                         
                         
                         Container(
                  
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                 
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    featuredProduct.text.white.fontFamily(bold).size(18).make(),
                    10.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                      
                        children: 
                        List.generate(6, (index) =>  Column(
                            crossAxisAlignment: CrossAxisAlignment.start, 
                      
                          children: [
                            Image.asset(imgP1, width: 150, fit: BoxFit.cover),
                            10.heightBox,
                            "Laptop 4GB/64GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                            10.heightBox,
                            "\$600".text.color(Vx.black).fontFamily(bold).size(16).make(),
                      
                          
                          ],
                        ).box.white.roundedSM.margin(const EdgeInsets.symmetric(horizontal: 4)).padding(const EdgeInsets.all(12)).make(),),
                      ),
                    ),
                  ],),
                ),

                
                
                
                
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