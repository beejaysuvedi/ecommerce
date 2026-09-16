import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode _themeMode = ThemeMode.light;
  ThemeMode get themeMode => _themeMode;

  bool get isDarkTheme => _themeMode == ThemeMode.dark;

  void toogleTheme(){
    _themeMode = isDarkTheme ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
  }
}
