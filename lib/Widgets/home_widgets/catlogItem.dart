import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:git_project_2/Models/cart.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:git_project_2/Models/catlog.dart';

import 'addToCart.dart';

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
                      catlog.desc.text.make(),
                      10.heightBox,
                      ButtonBar(
                        alignment: MainAxisAlignment.spaceBetween,
                        buttonPadding: Vx.mOnly(right: 16),

                        children: [

                          "\$${catlog.price}".text.bold.xl.make(),
                          AddToCart(catlog: catlog)


                        ],
                      ).pOnly(right: 8)

                    ])
            )]

      ),
    ).white.roundedLg.square(120).make().py32();


  }
}

