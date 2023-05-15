import 'package:fetch_data_from_api/data/product.dart';
import 'package:fetch_data_from_api/network/network.dart';

class ProductController {
  final NetworkApi _networkApi;
  ProductController(this._networkApi);
  Future<List<Products>> fetchProductList() async {
    return _networkApi.getProductList();
  }
}
