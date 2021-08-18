import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatlogHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "CatlogApp".text.xl5.bold.color(Colors.blue).make(),
        "Trending Products".text.xl2.color(Colors.black).make(),


      ],


    );
  }
}