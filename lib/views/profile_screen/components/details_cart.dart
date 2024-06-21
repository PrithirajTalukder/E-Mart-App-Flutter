import 'package:ecom_store/consts/consts.dart';

Widget DetailsCart({width, String ? count, String ? title}){
  return   Column(
            children: [

              "00".text.color(darkFontGrey).size(18).fontFamily(bold).make(),
              5.heightBox,
              "In your Cart".text.color(darkFontGrey).make(),

            ],
          ).box.white.rounded.padding(EdgeInsets.all(8)).width(width).height(80).make();
          
       
}