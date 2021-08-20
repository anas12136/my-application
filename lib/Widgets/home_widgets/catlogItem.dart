import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:git_project_2/Models/cart.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:git_project_2/Models/catlog.dart';

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
                          _AddToCart(catlog: catlog)


                        ],
                      ).pOnly(right: 8)

                    ])
            )]

      ),
    ).white.roundedLg.square(120).make().py32();


  }
}

class _AddToCart extends StatefulWidget {
  final Item catlog;
  const _AddToCart({
    Key, key, required this.catlog,
}) : super(key: key);

  @override
  __AddToCartState createState() => __AddToCartState();
}

class __AddToCartState extends State<_AddToCart> {
  bool isAdded = false;
@override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        isAdded = isAdded.toggle();
        final _catlog = CatlogModel();
        final _cart = CartModel();
        _cart.catlog = _catlog;
        _cart.add(widget.catlog);
        setState(() {

        });

      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.brown),
          shape: MaterialStateProperty.all(StadiumBorder(),)

      ),
      child:
      isAdded? Icon(Icons.done):"Add to cart".text.make(),
    );
  }
}
