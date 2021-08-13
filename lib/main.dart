import 'package:flutter/material.dart';
import 'package:git_project_2/Pages/home_page.dart';
import 'package:git_project_2/Pages/LoginPage.dart';
import 'package:git_project_2/utills/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


        return MaterialApp(
          themeMode: ThemeMode.light,
          theme: ThemeData(
              primarySwatch: Colors.deepPurple,
            primaryTextTheme: GoogleFonts.lateefTextTheme(),

          ),
          initialRoute: MyRoutes.homeRoute,
          routes: {
            "/": (context) => LoginPage(),
            MyRoutes.homeRoute:(context) => HomePage(),
            MyRoutes.loginRoute:(context) => LoginPage(),
          }
          );


  }
}