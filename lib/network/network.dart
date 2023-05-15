import 'package:fetch_data_from_api/data/product.dart';

abstract class NetworkApi {
  Future<List<Products>> getProductList();
  Future<String> patchCompleted(Products products);
  Future<String> putCompleted(Products products);
  Future<String> deleteProduct(Products products);
  Future<String> postProduct(Products products);
}
