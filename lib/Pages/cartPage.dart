import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$999".text.bold.xl5.color(Colors.blueGrey.shade700).make(),
          30.widthBox,
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                MaterialStateProperty.all(Colors.blueGrey.shade700)
            ),

              onPressed: (){},
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
  @override
  Widget build(BuildContext context) {
       return ListView.builder(
           itemCount: 5,
           itemBuilder: (context, index)=>ListTile(
             leading: Icon(Icons.done),
             trailing: IconButton(
                 icon: Icon(Icons.remove_circle), onPressed: () {  },),
             title: "Item 1".text.make(),

           ),
       );
  }
}