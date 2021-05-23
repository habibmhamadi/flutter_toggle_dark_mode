import 'package:app/prefs/preference.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier{
  bool _darkTheme = false;
  ThemePreference preference = ThemePreference();

  //getter
  bool get darkTheme => _darkTheme;

  //setter
  set darkTheme(bool value) {
    _darkTheme = value;
    preference.setTheme(value);
    notifyListeners();
  }
}