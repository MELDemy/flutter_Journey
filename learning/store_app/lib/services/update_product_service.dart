import 'package:dio/dio.dart';
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/constants.dart';

class UpdateProductService {
  Future<ProductModel> updateProduct({
    required int id,
    required String title,
    required double price,
    required String description,
    required String image,
    required String category,
  }) async {
    try {
      Response<dynamic> response = await Api().put(
        url: '$baseURL/$productsURL/$id',
        body: {
          "title": title,
          "price": price,
          "description": description,
          "image": image,
          "category": category,
        },
        // headers: {"Content-Type": "application/x-www-form-urlencoded"},
      );
      print(response);
      return ProductModel.fromJson(response.data);
    } catch (e) {
      print("Error");
      throw (e);
    }
  }
}
