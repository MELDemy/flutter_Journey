import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/constants.dart';

class CategoryService {
  Future<List<ProductModel>> getCategoty(String categoryName) async {
    final List<dynamic> response = await Api()
        .get(url: '$baseURL/$productsURL/$categoryURL/$categoryName');

    List<ProductModel> productsList = [];
    for (dynamic product in response) {
      productsList.add(ProductModel.fromJson(product));
    }
    // print(productsList[0].price);
    return productsList;
  }
}
