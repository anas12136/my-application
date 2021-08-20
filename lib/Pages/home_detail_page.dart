import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:git_project_2/Models/catlog.dart';

import 'package:git_project_2/Widgets/home_widgets/addToCart.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/src/painting/text_style.dart';

class HomeDetailPage extends StatelessWidget{
  final Item catlog;

  const HomeDetailPage({Key? key,required this.catlog}) :assert(catlog!=null),super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: Vx.mOnly(right: 16),

          children: [

            "\$${catlog.price}".text.color(Colors.red.shade800).bold.xl3.make(),
            AddToCart(catlog: catlog).wh(120, 50)


          ],
        ),
      ),
      backgroundColor: Colors.red.shade50,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                tag: Key(catlog.id.toString()),
                child: Image.network(catlog.image).centered().py32()

            ).h32(context),
            Expanded(
                child:
                VxArc(
                  height: 30.0,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
              color: Colors.white,
            width: context.screenWidth,
            child: SingleChildScrollView(
              child: Column(

                children:[
                  catlog.name.text.xl4.color(Colors.black).bold.make(),
                  catlog.desc.text.lg.color(Colors.grey.shade500).make(),
                  10.heightBox,
                  "To secure a challenging position in a reputable organization to expand my learnings, knowledge, and skills.Secure a responsible career opportunity to fully utilize my training and skills, while making a significant contribution to the success of the company.Secure a responsible career opportunity to fully utilize my training and skills, while making a significant contribution to the success of the company.".text.make().p16()
                ],

              ).py64(),
            ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}