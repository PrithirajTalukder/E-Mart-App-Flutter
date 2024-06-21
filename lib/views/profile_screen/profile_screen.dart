import 'package:ecom_store/consts/consts.dart';
import 'package:ecom_store/consts/lists.dart';
import 'package:ecom_store/views/profile_screen/components/details_cart.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.black,
    
      body: SafeArea(child: Container(
        padding: EdgeInsets.all(18),
        child: Column(children: [


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: const Align(
                alignment: Alignment.topRight,
                child: Icon(Icons.edit, color: whiteColor,),
              ).onTap(() {}),
            ),






          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Image.asset(imgProfile2, width: 100, fit: BoxFit.cover,).box.roundedFull.clip(Clip.antiAlias).make(),
                10.widthBox,
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "Dummy User".text.white.fontFamily(semibold).make(),
                  "Dymmy@gmail.com".text.white.fontFamily(semibold).make(),
            
                ],
              ),),
            
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: whiteColor
                  )
                ),
                onPressed: (){}, child: "Logout".text.white.fontFamily(semibold).make()),
            ],),
          ),


          20.heightBox,

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DetailsCart(count: "00", title: "in your cart", width: context.screenWidth/3.5 ),
            DetailsCart(count: "00", title: "in your wishlist", width: context.screenWidth/3.5 ),
            DetailsCart(count: "00", title: "your orders", width: context.screenWidth/3.5 ),
          ],
        ),

        40.heightBox,

        ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (context, index){
            return Divider(
              color: whiteColor,
            );
          },
          itemCount: profileButtons.length,
          itemBuilder: (BuildContext context, int index){
            return ListTile(

              leading: Image.asset(
                profileButtonsIcons[index],
                width: 22,
              ),
            
              title: profileButtons[index].text.white.fontFamily(bold).size(20).make()
            );
          }).box.rounded.margin(EdgeInsets.all(12)).padding(EdgeInsets.symmetric(horizontal: 16)).shadowSm.border(color: whiteColor).make(),
          
        ],),
      ))
    );
  }
}