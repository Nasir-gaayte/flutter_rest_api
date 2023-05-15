class Products {
  int? id;
  String? name;
  String? image;
  String? price;
  String? desc;
  String? postDate;
  int? category;

  Products(
      {this.id,
      this.name,
      this.image,
      this.price,
      this.desc,
      this.postDate,
      this.category});

  factory Products.fromJson(Map<String, dynamic> json) {
    return Products(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      price: json['price'],
      desc: json['desc'],
      postDate: json['post_date'],
      category: json['category'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['price'] = price;
    data['desc'] = desc;
    data['post_date'] = postDate;
    data['category'] = category;
    return data;
  }
}
