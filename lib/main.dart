import 'package:app_azkar/preferences/shared_pref_controller.dart';
import 'package:app_azkar/screens/home_screen.dart';
import 'package:app_azkar/screens/launch_screen.dart';
import 'package:app_azkar/theme/app_theme/app_theme_dark.dart';
import 'package:app_azkar/theme/app_theme/app_theme_light.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefController().initSharedPref();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme:   getAppThemeLight(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar'),
        Locale('en'),
      ],
      locale: const Locale('ar'),
      initialRoute: '/launch_screen',
      routes: {
         '/launch_screen' :(context) => const LaunchScreen(),
         '/home_screen' :(context) => const HomeScreen(),
      },
    );
  }
}


