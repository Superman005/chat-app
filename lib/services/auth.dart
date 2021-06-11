import 'package:chat_app/helperfunctions/sharedpref_helper.dart';
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

    final GoogleSignInAccount googleSignInAccount =
        await _googleSignIn.signIn();

    //recervier can be null so added !
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    //googleSignInAuthentication bata aayoko authentication ko-
    // -info leko taki firebase ma use garna sakiyos
    final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);

    //yo sab paxi user ko info lina ko lagi UserCredential lekhya-
    //-taki result vanne variable use garera info nikalna(use) sakos
    //UserCredential firebase ko package maii hunxa
    UserCredential result =
        await _firebaseAuth.signInWithCredential(credential);

    //result.bla.bla lekhiranu vanda boru auta userDetails vannle banaideko
    User userDetails = result.user;

    //search facility implementantion ko lagi user info, database ma-
    //pathauna paryo tesko lagi Sharedpref_helper.dart complete gareko-
    // ani yo garya)
    //user credentials save garya uta(shared preferens/googleSign-in) bata liyera
    if (result != null) {
      // SharedPreferenceHelper().saveUserEmail(userDetails?.email ?? "");
      SharedPreferenceHelper().saveUserEmail(userDetails.email);
      SharedPreferenceHelper().saveUserId(userDetails.uid);
      SharedPreferenceHelper().saveDisplayName(userDetails.displayName);
      SharedPreferenceHelper().saveUserProfileUrl(userDetails.photoURL);
    }
  }
}
