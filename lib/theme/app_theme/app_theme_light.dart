import 'package:app_azkar/theme/app_color/app_color_light.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData getAppThemeLight() => ThemeData(
      primaryColor: AppColorLight.primaryColorLight,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColorLight.doNotColorLight,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColorLight.iconColorLight),
        titleTextStyle:
            TextStyle(color: AppColorLight.iconColorLight, fontSize: 20),
      ),
      scaffoldBackgroundColor: AppColorLight.whiteColorLight,
      backgroundColor: AppColorLight.bakGroundColorLight,
      fontFamily: GoogleFonts.arefRuqaa().fontFamily,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(AppColorLight.bottomColorLight),
          textStyle: MaterialStateProperty.all<TextStyle>(
            GoogleFonts.arefRuqaa(fontSize: 18),
          ),
        ),
      ),
      textTheme: TextTheme(
        bodyMedium: GoogleFonts.arefRuqaa(
          color: Colors.black,
        ),
      ),
      iconTheme: const IconThemeData(
        color: Colors.red,
        size: 24.0,
      ),
    );
