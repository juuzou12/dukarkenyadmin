
import 'package:firebase_auth/firebase_auth.dart';

class AuthController{

  //firebase variables......
  var firebaseAuth = FirebaseAuth.instance;
  // final fireStoreInstance = FirebaseFirestore.instance;

  ///this is for the client to login using email and password.......
  void loginUser(String email, String password, successFunction, failedFunction,
      wrongCred, userNotFound, failed) async {
    print("The logs for the login api call will appear here");
    try {
      print("inside the try catch---");
      var userCredential = await firebaseAuth.signInWithEmailAndPassword(
          email: email.trim(), password: password);
      print("----after the signIn call --$userCredential");
      successFunction();
      // checkUserBeforeLogin(email.trim(), successFunction, failed);
    } on FirebaseAuthException catch (e) {
      print(e);
      failedFunction(e);
    }
  }
}