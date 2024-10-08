import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/constants.dart';

class AllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    final List<dynamic> response =
        await Api().get(url: '$baseURL/$productsURL');

    List<ProductModel> productsList = [];
    for (dynamic product in response) {
      productsList.add(ProductModel.fromJson(product));
    }
    // print(productsList);
    return productsList;
  }
}
