import 'package:fetch_data_from_api/data/product.dart';
import 'package:fetch_data_from_api/network/network.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductNetwork implements NetworkApi {
  String dataURl = "https://weme.pythonanywhere.com/";

  @override
  Future<String> deleteProduct(Products products) {
  
    throw UnimplementedError();
  }

  @override
  Future<List<Products>> getProductList() async {
    List<Products> productList = [];
    var url = Uri.parse("$dataURl/product");
    var response = await http.get(url);
    print(response.body);
    var body = json.decode(response.body);
    for (var i = 0; i < body.length; i++) {
      productList.add(Products.fromJson(body[i]));
    }
    return productList;
  }

  @override
  Future<String> patchCompleted(Products products) {
    // TODO: implement patchCompleted
    throw UnimplementedError();
  }

  @override
  Future<String> postProduct(Products products) {
    // TODO: implement postProduct
    throw UnimplementedError();
  }

  @override
  Future<String> putCompleted(Products products) {
    // TODO: implement putCompleted
    throw UnimplementedError();
  }
}
