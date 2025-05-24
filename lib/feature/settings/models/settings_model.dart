import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsModel extends ChangeNotifier {
  bool? isLightTheme;
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  SettingsModel({required this.isLightTheme});

  void changeTheme(bool isLigthTheme) {
    isLightTheme = isLigthTheme;
    _prefs.then((prefs) {
      prefs.setBool('isLigthTheme', isLigthTheme);
    });
    notifyListeners();
  }
}
