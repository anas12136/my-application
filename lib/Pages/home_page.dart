import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 import 'package:flutter/services.dart';
import 'package:git_project_2/Models/catlog.dart';
import 'package:git_project_2/Widgets/home_widgets/catlogList.dart';
import 'package:git_project_2/Widgets/home_widgets/catlogheader.dart';
import 'package:git_project_2/utills/routes.dart';
 //import 'package:git_project_2/Widgets/drawer.dart';
// import 'package:git_project_2/Widgets/item_widget.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocity_x/src/flutter/text.dart';
import 'package:flutter/src/painting/text_style.dart';


class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String  name = "Anas";

@override
  void initState() {
    super.initState();
    loadData();
  }
  loadData()async{
  await Future.delayed(Duration (seconds: 2));


  final catlogJson =  await rootBundle.loadString("assets/files/catlog.json");
  final decodeData = jsonDecode(catlogJson);
  var productsData = decodeData["products"];
  CatlogModel.items= List.from(productsData)
      .map<Item>((item) => Item
      .fromMap(item)).toList();

  setState(() {

  });
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      backgroundColor: Colors.grey,
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pushNamed(context, MyRoutes.cartRoute);
      },
        backgroundColor: Colors.brown,
        child: Icon(CupertinoIcons.cart),),

      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatlogHeader(),
              if(CatlogModel.items!=null && CatlogModel.items.isNotEmpty)
                CatlogList().expand()
              else

                CircularProgressIndicator().centered().expand(),


            ],
  ),
        ),
      )
  );


  }
}


