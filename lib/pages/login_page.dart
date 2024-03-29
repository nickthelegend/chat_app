import 'package:chat_app/auth/auth_service.dart';
import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget{

final TextEditingController _emailController=TextEditingController();
final TextEditingController _passwordController = TextEditingController();

///Playing with the gestures of the login and register 
void Function()? ontapRegister;



LoginPage({super.key, required this.ontapRegister});


void login(BuildContext context) async{


  ///Auth Service
  final authService = AuthService(); 
/////Try Login
try{
await authService.signinWithEmailPassword(_emailController.text, _passwordController.text);


} catch (e){

showDialog(context: context, builder: (context) {
    return AlertDialog(
      title: Text(e.toString())
    );
  },


);

}


}
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
MyTextField(hintText: "Password",isPassword: true,controller:_passwordController,),
const SizedBox(height: 10,),

////Login Buttion
MyButton(buttonText: "Login",onTap: ()=>login(context),),



///Register Now 
Row(mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text("Not a Member?",
    style: TextStyle(color: Colors.grey.shade500,



    ),),
    GestureDetector(onTap: ontapRegister,
      child: Text(" Register Now",
      style: TextStyle(color: Colors.grey.shade500,
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




