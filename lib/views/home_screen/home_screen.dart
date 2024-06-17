import 'package:ecom_store/consts/consts.dart';
import 'package:ecom_store/consts/lists.dart';
import 'package:ecom_store/views/home_screen/components/featured_button.dart';
import 'package:ecom_store/widgets_common/home_button.dart';

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
             
              20.heightBox,
             
              Align(
                alignment: Alignment.bottomLeft,
                child: fcategories.text.color(whiteColor).fontFamily(semibold).size(18).make()),
                20.heightBox,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: 
                    List.generate(3, (index) =>  Column(
                      children: [
                     
                  
                     featuredButton(icon: featuredImages1[index], title: featuredTitles1[index]),
                     10.heightBox,
                     featuredButton(icon: featuredImages2[index], title: featuredTitles2[index]),
                        
                      ],
                    )).toList(),
                  ),
                ),

                20.heightBox,
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

                20.heightBox,
                   VxSwiper.builder(
                height: 150,
              
                enlargeCenterPage: true,
               
                itemCount: secondSliderList.length, itemBuilder: (context, index){
                return  Image.asset(
                    secondSliderList[index],
                    fit: BoxFit.fitWidth,
                    
                  
                ).box.rounded.make();
             
              }),

              20.heightBox,
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6, 
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8, mainAxisExtent: 300),  itemBuilder: (context,index){
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   Image.asset(imgP6, width: 200, height: 200, fit: BoxFit.cover),
                           const Spacer(),
                            "Lionel Messi Boot".text.fontFamily(semibold).color(darkFontGrey).make(),
                            10.heightBox,
                            "\$600".text.color(Vx.black).fontFamily(bold).size(16).make(),
                  ],
                  

                ).box.white.roundedSM.margin(const EdgeInsets.symmetric(horizontal: 4)).padding(const EdgeInsets.all(10)).make();
              })
             ],),
           ),

           
         ),

        ],
      )),
      
      
      );
      
  }
}