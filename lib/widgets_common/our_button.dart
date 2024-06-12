import 'package:ecom_store/consts/consts.dart';

Widget ourButton({ String? title , onPress, color, textColor}){
  return ElevatedButton(

    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: const EdgeInsets.all(12),
    ),
    
    onPressed: () {
      onPress;
    }, 
    
    child: title!.text.color(textColor).fontFamily(bold).make());
}