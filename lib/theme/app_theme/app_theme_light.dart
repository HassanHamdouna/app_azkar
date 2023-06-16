import 'package:app_azkar/theme/app_color/app_color_light.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData getAppThemeLight() => ThemeData(
  primaryColor: AppColorLight.primaryColorLight,
  appBarTheme: const  AppBarTheme(
    color: AppColorLight.appBarColorLight
  ),
    backgroundColor: AppColorLight.bakGroundColorLight,
  fontFamily: GoogleFonts.arefRuqaa().fontFamily,
  buttonTheme: ButtonThemeData(
    // focusColor: MaterialStateProperty.all(AppColorLight.bottomColorLight1),
  ),
  // textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.pink),


);