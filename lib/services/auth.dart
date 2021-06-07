import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthMethods {
  //local variable banako ho auth vanne
  final FirebaseAuth auth = FirebaseAuth.instance;

  getCurrentUser() {
    //argument pass garya xaina so () khali xa
  }

  signInWithGoogle(BuildContext context) async {
    //create an instance of FirebaseAuth and GoogleSignIn
    final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    final GoogleSignIn _googleSignIn = GoogleSignIn();

    final GoogleSignInAccount? googleSignInAccount =
        await _googleSignIn.signIn();
  }
}
