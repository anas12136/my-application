import 'package:git_project_2/Models/cart.dart';
import 'package:git_project_2/Models/catlog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore{
  late
  CatlogModel catlog;
 late
 CartModel cart;

  MyStore(){
    catlog = CatlogModel();
    cart = CartModel();
    cart.catlog = catlog;
  }
}