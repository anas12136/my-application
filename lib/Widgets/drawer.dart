import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final imageurl = "https://static.remove.bg/remove-bg-web/bf554ca6716508caedc52f1ac289b1eec29b6734/assets/start_remove-79a4598a05a77ca999df1dcb434160994b6fde2c3e9101984fb1be0f16d0a74e.png";
    return Drawer(
      child: Container(

        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,


          children: [
            DrawerHeader(

                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,

                accountName:Text (
                  "Anas Sattar Kaarwa",
                  textScaleFactor: 1.8,


                ),
                accountEmail: Text(
                  "anas.kaarwa@gmail.com",
                  textScaleFactor: 1.8,



                ),

                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                ),


    )
            ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,

            ),
            title: Text(
                "Home",
              textScaleFactor: 1.2,
                style: TextStyle(
                color: Colors.white,



          )


              )
            ),
            ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,

                ),
                title: Text(
                    "Profile",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,



                    )


                )
            ),

            ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.white,

                ),
                title: Text(
                    "Email",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,



                    )


                )
            ),
            ListTile(
                leading: Icon(
                  CupertinoIcons.phone,
                  color: Colors.white,

                ),
                title: Text(
                    "Contact Us",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,



                    )


                )
            )




            //

          ],

        ),
      ),
    );
  }

}