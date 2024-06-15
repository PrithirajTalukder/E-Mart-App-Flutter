import 'package:ecom_store/consts/consts.dart';
import 'package:ecom_store/consts/lists.dart';
import 'package:ecom_store/widgets_common/home_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: const EdgeInsets.all(12),
      color: Colors.black,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(child: Column(
        children: [
          Container(
            
            alignment: Alignment.center,
            height: 60,
            color: Colors.black,
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                
                ),
                filled: true,
                fillColor: Colors.black,
                
                hintText: search,
                hintStyle: TextStyle(color: textfieldGrey),
                suffixIcon: Icon(Icons.search),
              ),
              style: const TextStyle(color: Colors.white),
            ),
          ),

          10.heightBox,
         Expanded(
           child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
             child: Column(children: [
               VxSwiper.builder(
                height: 130,
                
                enlargeCenterPage: true,
               
                itemCount: sliderList.length, itemBuilder: (context, index){
                return  Image.asset(
                    sliderList[index],
                    fit: BoxFit.fitWidth,
                    
                  
                ).box.rounded.make();
             
              }),
             
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(2, (index) => homeButtons(
                  width: context.screenWidth / 2.5,
                  height: context.screenHeight * 0.15,
                  icon: index == 0 ? icTodaysDeal : icFlashDeal,
                  title: index == 0 ? todayDeal : flash,
                )),
              ), 
              
              
             
               VxSwiper.builder(
                height: 150,
                
                enlargeCenterPage: true,
               
                itemCount: secondSliderList.length, itemBuilder: (context, index){
                return  Image.asset(
                    secondSliderList[index],
                    fit: BoxFit.fitWidth,
                    
                  
                ).box.rounded.make();
             
              }),
             
              5.heightBox,
             
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(3, (index)=> homeButtons(
                height: context.screenHeight * 0.15,
                width: context.screenWidth / 3.5,
                icon: index == 0 ? icTopCategories : index == 1 ? icBrands : icTopSeller,
                title: index == 0 ? tcategories : index == 1 ? brands : sellers,
              ))),
             
              10.heightBox,
             
              Align(
                alignment: Alignment.bottomLeft,
                child: fcategories.text.color(whiteColor).fontFamily(semibold).size(18).make()),
             ],),
           ),
         ),

        ],
      )),
      
      
      );
      
  }
}