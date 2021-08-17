class Item {
    List<Product> products;

    Item({this.products});

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