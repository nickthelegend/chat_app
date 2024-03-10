import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
class AuthService{

  /// instance of the auth
  final FirebaseAuth _auth= FirebaseAuth.instance;

  /// Signin
  
Future<UserCredential> signinWithEmailPassword(String email, password) async{
try{

  UserCredential userCredential= await _auth.signInWithEmailAndPassword(email: email, password: password);
  return userCredential;
} on FirebaseAuthException catch (e){
  throw Exception(e.code);
}

}
  /// sign up
  



   /// Signout 
  


}