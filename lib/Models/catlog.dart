import 'dart:convert';
class CatlogModel{
  static List<Item> items = [
    Item(
        id: 1,
          name: "Anas Sattar",
          desc: "Apple iphone 12th gen",
          price: 999,
          color: "#33053a",
          image: "https://media-exp1.licdn.com/dms/image/C4D0BAQHPgWJOYQyawA/company-logo_200_200/0?e=2159024400&v=beta&t=pAHriBRIHGyWGmPsE6XJLAvguWfFE05lJtwEYmp-i-g"



    )
  ];
  Item getById (int id) => items.firstWhere((element) =>element.id == id, orElse: null);
  Item getByPosition (int pos) => items[pos];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {
        required this.id,
        required this.name,
        required this.desc,
        required this.price,
        required this.color,
        required this.image
      });



  factory Item.fromMap(Map<String, dynamic> json) {
  return Item(
  color: json['color'],
  desc: json['desc'],
  id: json['id'],
  image: json['image'],
  name: json['name'],
  price: json['price'],
  );
  }

  Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['color'] = this.color;
  data['desc'] = this.desc;
  data['id'] = this.id;
  data['image'] = this.image;
  data['name'] = this.name;
  data['price'] = this.price;
  return data;
  }
  }



