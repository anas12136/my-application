import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:git_project_2/Models/catlog.dart';
import 'package:git_project_2/Widgets/drawer.dart';
import 'package:git_project_2/Widgets/item_widget.dart';


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
      appBar: AppBar(
        title: Text('Catlog App'),
      ),

    body:Padding(
      padding: const EdgeInsets.all(16.0),
      child: ( CatlogModel.items != null && CatlogModel.items.isNotEmpty)
          ?GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
        itemCount: CatlogModel.items.length,
        itemBuilder: (context, index){
         final item= CatlogModel.items[index];
            return Card(

              child: GridTile(
           header:

           Container(
               child: Text(
                 item.name,
                 style: TextStyle(
                     color: Colors.white,
                 ),
                 
                 
               ),
             padding: const EdgeInsets.all(12),
             decoration: BoxDecoration(
               color: Colors.deepPurple,
             ),
           ), child: Image.network(item.image,),
                footer: Container
                  (
                  child: Text(
                    item.price.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(color: Colors.black,),
                ),
         ),
            );
        },
      )
          : Center(
        child: CircularProgressIndicator(color: Colors.deepPurple),
      ),
    ),
      drawer: MyDrawer(),


    );
  }
}