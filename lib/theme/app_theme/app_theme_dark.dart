import 'package:app_azkar/theme/app_color/app_color_dark.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData   getAppThemeDark() =>  ThemeData(
  primaryColor: AppColorDark.primaryColorDark,
  appBarTheme: const AppBarTheme(
    color: AppColorDark.doNotColorDark,
    centerTitle: true,
    iconTheme: IconThemeData(
        color: AppColorDark.iconColorDark
    ),
    titleTextStyle: TextStyle(
        color: AppColorDark.iconColorDark,
      fontSize: 20
    ),
  ),
  scaffoldBackgroundColor:AppColorDark.bakGroundColorDark ,

  backgroundColor: AppColorDark.bakGroundColorDark,
  fontFamily: GoogleFonts.arefRuqaa().fontFamily,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor:
      MaterialStateProperty.all<Color>(AppColorDark.bottomColorDark),
      textStyle: MaterialStateProperty.all<TextStyle>(
        GoogleFonts.arefRuqaa(fontSize: 18),
      ),
    ),
  ),
  textTheme: TextTheme(
    bodyMedium:  GoogleFonts.arefRuqaa(
      color: Colors.black,
    ),
  ),
  // iconTheme: const IconThemeData(
  //   color: Colors.red,
  //   size: 24.0,
  // ),
);
