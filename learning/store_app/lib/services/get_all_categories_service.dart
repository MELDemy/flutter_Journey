import 'package:store_app/helper/api.dart';
import 'package:store_app/services/constants.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    final List<dynamic> categoriesList =
        await Api().get(url: '$baseURL/$productsURL/$categoriesURL');

    // print(categoriesList);
    return categoriesList;
  }
}
