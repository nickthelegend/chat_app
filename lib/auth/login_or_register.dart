import "package:chat_app/pages/login_page.dart";
import "package:chat_app/pages/register_page.dart";
import "package:flutter/material.dart";



class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {


  ////Initially Show a login page then show a register page
  bool showLoginPage = true;


  void togglePage(){


    setState(() {
      showLoginPage= !showLoginPage;
    });
        ///// you're telling Flutter that the internal state of the widget has changed and needs to be updated. This triggers a rebuild of the widget's subtree, which in turn updates the UI to reflect the new state.



  }
  @override
  Widget build(BuildContext context) {


    if(showLoginPage){
    return LoginPage(ontapRegister: togglePage);
     }else{
      return RegisterPage(ontapLogin: togglePage);
     } }
}