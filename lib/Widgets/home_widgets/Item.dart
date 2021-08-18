import 'package:git_project_2/Models/Product.dart';

class Item {
    List<Product> products;

    Item({required this.products});

    factory Item.fromJson(Map<String, dynamic> json) {
        return Item(
            products: json['products'] != null ? (json['products'] as List).map((i) => Product.fromJson(i)).toList() : null,
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        if (this.products != null) {
            data['products'] = this.products.map((v) => v.toJson()).toList();
        }
        return data;
    }
}