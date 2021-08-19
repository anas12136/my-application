import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:git_project_2/Models/catlog.dart';

import 'package:git_project_2/Pages/home_detail_page.dart';

import 'catlogItem.dart';



class CatlogList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      shrinkWrap: true,

      //itemCount: CatlogModel.items.length,
      itemCount: CatlogModel.items.length,
      itemBuilder:(context, index) {
        final catlog = CatlogModel.getByPosition(index);
        return InkWell(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(
                builder: (context)=>HomeDetailPage(
                    catlog: catlog,
                )
            )),
            child:
            CatlogItem(catlog: catlog));
      },
    );
  }
}