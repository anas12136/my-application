import 'package:flutter/material.dart';
import 'package:git_project_2/Models/catlog.dart';
import 'package:git_project_2/Widgets/drawer.dart';
import 'package:git_project_2/Widgets/item_widget.dart';

class HomePage extends StatelessWidget{
  final int days = 30;
  final String  name = "Anas";
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CatlogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text('Catlog App'),
      ),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index){
         return ItemWidget(
           item: dummyList[index],
         );
        }
      ),
      drawer: MyDrawer(),


    );
  }

}