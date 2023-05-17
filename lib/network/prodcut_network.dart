import 'package:fetch_data_from_api/data/product.dart';
import 'package:fetch_data_from_api/network/network.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductNetwork implements NetworkApi {
  String dataURl = "https://weme.pythonanywhere.com/";

  @override
  Future<String> deleteProduct(Products products) async {
    var url = Uri.parse('$dataURl/delete_product/${products.id}');
    var result = 'false';
    await http.delete(url).then((value) {
      return result = 'ture';
    });
    return result;
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
  Future<String> putCompleted(Products products) async {
    var url = Uri.parse("https://weme.pythonanywhere.com/update_update");
    String resData = '';
    await http.put(url, body: {
      'id': (products.id).toString(),
    }).then((response) {
      Map<String, dynamic> result = json.decode(response.body);
      print('this is the result ${result}');
      return resData = result['id'];
    });
    return resData;
  }

  @override
  Future<String> postProduct(Products products) async {
    var url = Uri.parse('$dataURl/create_product/'); 
    var response = await http.post(url, body: products.toJson());
    print(response.statusCode);
    print(response.body);
    return 'ture';
  }
}
