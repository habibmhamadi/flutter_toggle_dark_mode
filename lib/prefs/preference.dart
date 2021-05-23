import 'package:shared_preferences/shared_preferences.dart';

class ThemePreference {
  static const THEME_STATUS = 'THEME_STATUS';

  void setTheme(bool value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool(THEME_STATUS, value);
  }

  Future<bool> getTheme() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool(THEME_STATUS) ?? false;
  }
}