import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsModel extends ChangeNotifier {
  bool? isLightTheme;
  final SharedPreferences pref;
  SettingsModel({required this.isLightTheme, required this.pref});

  Future<void> changeTheme(bool isLigthTheme) async {
    isLightTheme = isLigthTheme;
    await pref.setBool('isLightTheme', isLigthTheme);
    notifyListeners();
  }
}
