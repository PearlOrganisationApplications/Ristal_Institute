

import 'package:ristal_institute/utils/Constant/App%20Key/key.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  static late SharedPreferences _preferences;

  static Future init() async => _preferences = await SharedPreferences.getInstance();

  ///User Display Name getter
  static String? getDisplayName(String displayName) {
    String s = _preferences.getString(AppKeys.userDisplayName) ?? 'Dummy Name';
    return s!;
  }

  ///User Display Name Setter
  static void setDisplayName( String displayName){
    _preferences.setString(AppKeys.userDisplayName, displayName);
  }

  ///User Email getter
  static String? getEmailAddress(String email) {
    String s = _preferences.getString(AppKeys.userEmail) ?? 'dummy@email.today';
    return s!;
  }

  ///User Email Setter
  static void setEmailAddress( String email){
    _preferences.setString(AppKeys.userEmail, email);
  }

}
