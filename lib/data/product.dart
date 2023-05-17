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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id.toString();
    data['name'] = name.toString();
    data['image'] = image.toString();
    data['price'] = price.toString();
    data['desc'] = desc.toString();
    data['post_date'] = postDate.toString();
    data['category'] = category.toString();
    return data;
  }
}
