
import 'package:git_project_2/Models/catlog.dart';

class CatlogModel {
  CatlogModel _catlog;

  //collection of IDs - store Ids of each item
final List<int> _itemIds = [];

//Get Catlog
CatlogModel get catlog => _catlog;
set catlog (CatlogModel newCatlog){
  assert(newCatlog!=null);
  _catlog = newCatlog;
}
//Get items in the cart
List<Item> get items => _itemIds.map((id) =>  _catlog.getById(id)).toList();

//Get total price
num get totalPrice => items.fold(0, (total, current) => total + current.price);

//Add Item
void add (Item item){
  _itemIds.add(item.id);
}
//remove item
void remove (Item item){
  _itemIds.remove(item.id);
}
}