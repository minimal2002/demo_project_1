import 'package:demo_project_1/Pages/user/homePage.dart';
import 'package:demo_project_1/Pages/user/main_drawer.dart';
import 'package:demo_project_1/Pages/loginPage.dart';
import 'package:demo_project_1/Pages/registerPage.dart';
import 'package:demo_project_1/Pages/registerUserPage.dart';
import 'package:demo_project_1/firstPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(textTheme: GoogleFonts.notoSansThaiTextTheme()),
      home: Firstpage(),
    );
  }
}