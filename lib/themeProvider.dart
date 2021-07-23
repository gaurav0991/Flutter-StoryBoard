import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider with ChangeNotifier {
  bool _isDarkMode=true;
  bool get DarkMode => this._isDarkMode;
  void checkMode() async {
    print(_isDarkMode);
    notifyListeners();
  }

  void changeMode() async {
    this._isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}