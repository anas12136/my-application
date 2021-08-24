import 'package:git_project_2/Models/cart.dart';
import 'package:git_project_2/Models/catlog.dart';
import 'package:flutter/material.dart';
import 'package:git_project_2/core/store.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatelessWidget {
  final Item catlog;
   AddToCart({
    Key, key, required this.catlog,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
     VxState.watch(context, on: [AddMutation]);

    final CartModel _cart = (VxState.store as MyStore).cart;
    bool isInCart = _cart.items.contains(catlog);
    return ElevatedButton(

      onPressed:
          () {
        if(!isInCart)
        {

          AddMutation(catlog);

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
