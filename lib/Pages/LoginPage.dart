import 'dart:async';

import 'package:flutter/material.dart';
import 'package:git_project_2/Pages/home_page.dart';
import 'package:git_project_2/utills/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool ChangeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(

        children: [

          Image.asset(
            "assets/images/login.png",
            fit: BoxFit.fill
          ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          "Welcome",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          )
        ),
          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password"
                  ),

                ),
                SizedBox(height: 50.0,),
                InkWell(
                  onTap: () async{
                    setState(() {
                      ChangeButton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: ChangeButton? 50 : 100,
                    height: 50,
                    alignment: Alignment.center,
                    child: ChangeButton
                        ? Icon(
                      Icons.done,
                    color: Colors.white,
                    )
                    : Text("Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,

                    ),


                    ),

                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(ChangeButton?50 : 8),
                    ),
          ),
          )
        ],
        ),
      ),
    ]),
    );
  }
}

  