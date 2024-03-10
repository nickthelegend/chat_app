import "package:flutter/material.dart";

class MyTextField extends StatelessWidget{
final String hintText;
final bool isPassword;
final TextEditingController controller;
MyTextField({super.key,required this.hintText,required this.controller,required this.isPassword});
@override
Widget build(BuildContext context){

return Padding(
  padding: EdgeInsets.symmetric(horizontal: 25.0),
  child: TextField(
        controller:controller,

    obscureText: isPassword,
    decoration: InputDecoration(enabledBorder: OutlineInputBorder(
  borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary)
  ),
  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)),
    hintText: hintText,
    hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary)
    ),
  ),
);


}




}