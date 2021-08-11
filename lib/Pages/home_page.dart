import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  final int days = 30;
  final String  name = "Anas";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catlog App'),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days challenge by $name"),
        ),
      ),
      drawer: Drawer(),


    );
  }

}