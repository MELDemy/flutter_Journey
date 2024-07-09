import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/categories_view/category_widget.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 30),
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: getCategories().length,
          itemBuilder: (context, index) {
            return CategoryWidget(category: getCategories()[index]);
          },
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

// @override
// Widget build(BuildContext context) {
//   return Padding(
//     padding: const EdgeInsets.fromLTRB(20, 10, 20, 30),
//     child: SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: getCategories().map((e) => CategoryWidget(category: e)).toList(),
//       ),
//     ),
//   );
// }
// }
