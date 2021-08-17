import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 import 'package:flutter/services.dart';
import 'package:git_project_2/Models/catlog.dart';
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
                Center(child:
                CircularProgressIndicator(),
    )

            ],
  ),
        ),
      )
  );


  }
}
class CatlogList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      shrinkWrap: true,

      itemCount: CatlogModel.items.length,
      itemBuilder:(context, index) {
        final catlog = CatlogModel.items[index];
        return CatlogItem(catlog: catlog);
      },
    );
  }
}
class CatlogItem extends StatelessWidget{
  final Item catlog;

  const CatlogItem({Key? key, required this.catlog}) :assert(catlog!=null), super(key: key);

  @override
  Widget build(BuildContext context) {

    return VxBox(
      child: Row(
        children: [
          Image.network(catlog.image).box.roundedLg.color(Colors.grey).py32.make().p16().w32(context),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catlog.name.text.lg.color(Colors.black).bold.make(),
              catlog.desc.text.make()
            ],
          ))
        ],

      ),
    ).white.roundedLg.square(120).make().py32();
  }
}
class CatlogHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
       "CatlogApp".text.xl5.bold.color(Colors.blue).make(),
       "Trending Products".text.xl2.color(Colors.black).make(),


     ],

    );
  }
}
