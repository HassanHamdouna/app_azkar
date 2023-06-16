
import 'package:app_azkar/theme/app_color/app_color_dark.dart';
import 'package:flutter/material.dart';

ThemeData getAppThemeDark() => ThemeData(
  primaryColor: AppColorDark.primaryColorDark,
  appBarTheme: const  AppBarTheme(
    color: AppColorDark.appBarColorDark
  ),
  backgroundColor: AppColorDark.bakGroundColorDark
);