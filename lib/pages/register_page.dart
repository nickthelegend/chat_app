import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController=TextEditingController();
final TextEditingController _passwordController = TextEditingController();
final TextEditingController _confirmpasswordController = TextEditingController();

void Function()? ontapLogin;
   RegisterPage({super.key, this.ontapLogin});


void register(){


  
}

  @override
  Widget build(BuildContext context) {
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
Text("Let's Create an Account for you"),
const SizedBox(height: 30,),


///Email Text Fiels
////We gonna use text field multiple times in the project so we gonna make a components folder and make a textwidigit class and implment it easitely
MyTextField(hintText: "Email",isPassword: false,controller: _emailController,),
const SizedBox (height: 10,),
////Passowrd
MyTextField(hintText: "Password",isPassword: true,controller:_passwordController,),
const SizedBox(height: 10,),
////Confirm Passowrd
MyTextField(hintText: "Confirm Password",isPassword: true,controller:_confirmpasswordController,),
const SizedBox(height: 10,),

////Register Buttion
MyButton(buttonText: "Register",onTap: register,),



///Register Now 
Row(mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text("Already a member?",
    style: TextStyle(color: Colors.grey.shade500,



    ),),
    GestureDetector(onTap: ontapLogin,
      child: Text(" Register Now",
      style: TextStyle(color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold
      
      
      ),),
    ),

  ],
)


/////we have to make all these components so i will be making a new folder with the name of components 

],),
);
  }
}