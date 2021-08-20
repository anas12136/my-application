import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:git_project_2/Models/cart.dart';
import 'package:velocity_x/velocity_x.dart';



class CartPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade100,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),

      ),
      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),

    );
  }
}
class _CartTotal extends StatelessWidget{
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${_cart.totalPrice}".text.bold.xl5.color(Colors.blueGrey.shade700).make(),
          30.widthBox,
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                MaterialStateProperty.all(Colors.blueGrey.shade700)
            ),

              onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: 'Buying not supported yet'.text.make() ));
              },
              child:
              "BUY".text.bold.xl2.make()
          ).w32(context).h8(context)
        ],
      ),

    );

  }

}
class _CartList extends StatefulWidget{
  @override
  __CartListState createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
       return _cart.items.isEmpty?"Nothing to show".text.xl2.makeCentered():
       ListView.builder(
           itemCount: _cart.items.length,
           itemBuilder: (context, index)=>ListTile(
             leading: Icon(Icons.done),
             trailing: IconButton(
                 icon: Icon(Icons.remove_circle),
               onPressed: () {
                   _cart.remove(_cart.items[index]);
                   setState(() {

                   });

               },
             ),
             title: _cart.items[index].name.text.make(),

           ),
       );
  }
}