import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}



class _LaunchScreenState extends State<LaunchScreen> {
  
  @override
  void initState() {
    Future.delayed( const Duration(seconds: 3) , (){
      Navigator.pushReplacementNamed(context, "/home_screen");
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        alignment: Alignment.center,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd,
                colors: [
                  Color(0xFF439A97),
                  Color(0xFFCBEDD5),
                ]
            ),
          ),
        child: Text('مسبحة الإكترونية', style: GoogleFonts.arefRuqaa(
          fontSize: 26,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
