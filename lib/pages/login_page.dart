import 'package:chat_app/components/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget{

final TextEditingController _emailController=TextEditingController();
final TextEditingController _passwordController = TextEditingController();


LoginPage({super.key});

@override
Widget build(BuildContext context){
return Scaffold(



  backgroundColor: Theme.of(context).colorScheme.background,

body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  
  
  children: [
////////Logo of our app 

Padding(padding: EdgeInsets.all(10),child: Container(child: SvgPicture.asset("assets/svg/me.svg") ,width: 100,height: 100)
)
,

/////Welcome Back Message



const SizedBox(height: 30,),
Text("Welcome Back, you've been misssed"),
const SizedBox(height: 30,),


///Email Text Fiels
////We gonna use text field multiple times in the project so we gonna make a components folder and make a textwidigit class and implment it easitely
MyTextField(hintText: "Email",isPassword: false,controller: _emailController,),
const SizedBox (height: 10,),
////Passowrd
MyTextField(hintText: "Password",isPassword: true,controller:_passwordController,)


////Login Buttion




///Register Now 



/////we have to make all these components so i will be making a new folder with the name of components 

],),
);


}





}




