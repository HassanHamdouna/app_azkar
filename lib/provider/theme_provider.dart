import 'package:app_azkar/preferences/shared_pref_controller.dart';
import 'package:app_azkar/theme/app_theme/app_theme_dark.dart';
import 'package:app_azkar/theme/app_theme/app_theme_light.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  String savedTheme =
      SharedPrefController().getValueFor<String>(PrefKey.theme.name) ?? 'ThemeLight';

  void changeTheme() {
    savedTheme = savedTheme == 'ThemeLight' ? 'ThemeDark' : 'ThemeLight';
    SharedPrefController().changeTheme(theme: savedTheme);
    notifyListeners();
  }
}
