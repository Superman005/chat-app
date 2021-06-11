import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
//function to upload the user info to database
//yesko vitra hune laii arguments vanxa
//Map ma string datatye of keys and dynamic datatype values 43:20
//ani yo map chaii user info map ho
  addUserInfoToDB(String userId, Map<String, dynamic> userInfoMap) {
    //hami collection ko vitra users ma gayera values add garnalaii
    // .doc ko satta k hunxa?? time:41:00
    FirebaseFirestore.instance.collection("users").doc(userId).set(userInfoMap);
  }
}
