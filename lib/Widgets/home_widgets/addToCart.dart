import 'package:git_project_2/Models/cart.dart';
import 'package:git_project_2/Models/catlog.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatefulWidget {
  final Item catlog;
  const AddToCart({
    Key, key, required this.catlog,
  }) : super(key: key);

  @override
  _AddToCartState createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {

  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {

    bool isInCart = _cart.items.contains(widget.catlog);
    return ElevatedButton(

      onPressed:
          () {
        if(!isInCart)
        {

          isInCart = isInCart.toggle();

          final _catlog = CatlogModel();
          _cart.catlog = _catlog;
          _cart.add(widget.catlog);
          setState(() {

          });
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.brown),
          shape: MaterialStateProperty.all(StadiumBorder(),)

      ),
      child:
      isInCart? Icon(Icons.done):Icon(Icons.add_shopping_cart_sharp),
    );
  }
}
