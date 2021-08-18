class Product {
    String color;
    String desc;
    int id;
    String image;
    String name;
    int price;

    Product({required this.color, required this.desc, required this.id, required this.image, required this.name, required this.price});

    factory Product.fromJson(Map<String, dynamic> json) {
        return Product(
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