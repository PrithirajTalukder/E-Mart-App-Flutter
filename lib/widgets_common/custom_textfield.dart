import 'package:ecom_store/consts/consts.dart';

Widget customTextField(){
  
  return Column(
    crossAxisAlignment:CrossAxisAlignment.start,
    
    children: [
    
    email.text.color(redColor).fontFamily(semibold).make(),
    5.heightBox,
    TextFormField(
      decoration: const InputDecoration(
        hintStyle: TextStyle(
          fontFamily: semibold,
          color: textfieldGrey,
        ),

        hintText: emailHint,
        isDense: true,
        fillColor: lightGrey,
        filled: true,
        border: InputBorder.none,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: redColor),
        )
      ),

    )
  ],);
}