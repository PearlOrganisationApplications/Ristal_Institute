

import 'package:ristal_institute/utils/Constant/App%20Key/key.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  static late SharedPreferences _preferences;

  static Future init() async => _preferences = await SharedPreferences.getInstance();

  ///User Display Name getter
  static bool? getUser() {
    bool? s = _preferences.getBool(AppKeys.isUserLogin) ?? false;
    return s!;
  }

  ///User Display Name getter
  static String? getDisplayName() {
    String s = _preferences.getString(AppKeys.userDisplayName) ?? '';
    return s!;
  }

  ///User Display Name Setter
  static void setDisplayName( String displayName){
    _preferences.setString(AppKeys.userDisplayName, displayName);
  }

  ///User Email getter
  static String? getEmailAddress() {
    String s = _preferences.getString(AppKeys.userEmail) ?? '';
    return s!;
  }

  ///User Email Setter
  static void setEmailAddress( String email){
    _preferences.setString(AppKeys.userEmail, email);
  }

  static void saveCredentials({required String email, required String displayName}) {
    _preferences.setString(AppKeys.userEmail, email);
    _preferences.setString(AppKeys.userDisplayName, displayName);
    _preferences.setBool(AppKeys.isUserLogin, true);
  }

  static void clearCredentials() {
    _preferences.setString(AppKeys.userEmail, '');
    _preferences.setString(AppKeys.userDisplayName, '');
    _preferences.setBool(AppKeys.isUserLogin, false);
  }

}
