import 'package:flutter/material.dart';
import 'package:git_project_2/Pages/home_page.dart';
import 'package:git_project_2/Pages/LoginPage.dart';
import 'package:git_project_2/Pages/cartPage.dart';
import 'package:git_project_2/Widgets/Themes.dart';
import 'package:git_project_2/core/store.dart';
import 'package:git_project_2/utills/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(
      store: MyStore(),
      child: MyApp()));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


        return MaterialApp(
          themeMode: ThemeMode.light,
          theme: MyTheme.lightTheme(context),
          initialRoute: MyRoutes.homeRoute,
          routes: {
            "/": (context) => LoginPage(),
            MyRoutes.homeRoute:(context) => HomePage(),
            MyRoutes.loginRoute:(context) => LoginPage(),
            MyRoutes.cartRoute:(context) => CartPage(),
          }
          );


  }
}