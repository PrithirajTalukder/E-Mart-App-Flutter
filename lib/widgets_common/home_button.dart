import "package:ecom_store/consts/consts.dart";

Widget homeButtons({width, height, icon, String ? title, onPress}){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Image.asset(icon, width: 26),
    10.heightBox,
    title!.text.fontFamily(semibold).color(darkFontGrey).make(),
  ],
    ).box.rounded.gray200.size(width, height).shadowSm.make();

}