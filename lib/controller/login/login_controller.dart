import 'package:google_sign_in/google_sign_in.dart';
import 'package:scala_flutter/di.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginController {
  GoogleSignIn googleSignIn = getIt.get();

  Future<bool> loginWithCredential() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: "test@test.com", password: "Test1245!");
      return true;
    } catch (ex) {
      print(ex);

      FirebaseAuth.instance.signInWithEmailAndPassword(
        email: "test@test.com",
        password: "Test1245!",
      );

      return true;
    }
  }

  Future<bool> loginWithGoogle() async {
    try {
      var googleSignInAccount = await googleSignIn.signIn();
      var authentication = await googleSignInAccount?.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: authentication?.accessToken,
        idToken: authentication?.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);
      return true;
    } catch (ex) {
      print(ex);
      return false;
    }
  }
}
