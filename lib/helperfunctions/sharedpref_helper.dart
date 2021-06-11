import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {
  //key haru banako
  //aauta value chaii key ma save garya taki tyo key use garera value access garna sakos
  //ani yo xutta xutaii garya chaii sajiloko lagi ho
  static String userIdKey = "USERKEY";
  static String userNameKey = "USERNAMEKEY";
  static String displaNameKey = "USERDISPLANAMEKEY";
  static String userEmailKey = "USEREMAILKEY";
  static String userProfilePicKey = "USERPROFILEPICKEY";

  //function to save data
  //getUserName just auta variable ho
  //Future<bool> return type ho
  Future<bool> saveUserEmail(String getUseremail) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userEmailKey, getUseremail);
  }

  Future<bool> saveUserId(String getUserId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //SharedPreferences use garya tala jasma key userNameKey vayo-
    //jasma value getUserName vayo
    return prefs.setString(userIdKey, getUserId);
  }

  //similarly
  Future<bool> saveUserName(String getUserName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userNameKey, getUserName);
  }

  Future<bool> saveUserProfileUrl(String getUserProfile) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userProfilePicKey, getUserProfile);
  }

  Future<bool> saveDisplayName(String getDisplayName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(displaNameKey, getDisplayName);
  }

  //function to get the info
  //getUserName function call garda return ma key(userNameKey) dinxa-
  //-yo hamile mathi save garya ho
  Future<String> getUserName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userNameKey);
  }

  Future<String> getUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userIdKey);
  }

  Future<String> getUserEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userEmailKey);
  }

  Future<String> getDisplayName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(displaNameKey);
  }

  Future<String> getUserProfileUrl() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userProfilePicKey);
  }
}
