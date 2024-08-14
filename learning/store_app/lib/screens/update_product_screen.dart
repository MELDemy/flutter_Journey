import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product_service.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_form_field.dart';

class UpdateProductScreen extends StatefulWidget {
  static const id = 'UpdateProductScreen';
  UpdateProductScreen({super.key});

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
  String? title;

  double? price;

  String? description;

  String? image;

  String? category;

  bool isloading = false;
  isLoading(bool isloading) {
    this.isloading = isloading;
    setState(() {});
  }

  late ProductModel product;
  @override
  Widget build(BuildContext context) {
    product = ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isloading,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Update Product'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50),
                CustomTextFormField(
                    hintText: product.title,
                    label: "Title",
                    onChanged: (input) {
                      (this.title = input);
                    }),
                CustomTextFormField(
                    hintText: product.price.toString(),
                    inputType: TextInputType.number,
                    label: "Price",
                    onChanged: (input) {
                      (this.price = double.parse(input));
                    }),
                CustomTextFormField(
                    hintText: product.description,
                    label: "Description",
                    onChanged: (input) {
                      (this.description = input);
                    }),
                CustomTextFormField(
                    hintText: product.image,
                    label: "Image Link",
                    onChanged: (input) {
                      (this.image = input);
                    }),
                CustomTextFormField(
                    hintText: product.category,
                    label: "Category",
                    onChanged: (input) {
                      (this.category = input);
                    }),
                SizedBox(height: 50),
                CustomButton(
                  text: "Update",
                  ontap: () async {
                    isLoading(true);
                    print("updating");
                    try {
                      await updateProduct();
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Product updated")));
                    } catch (e) {
                      print(e);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("There is an error!!,try again")));
                    }
                    isLoading(false);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct() async {
    await UpdateProductService().updateProduct(
      id: product.id,
      title: title ?? product.title,
      price: price ?? product.price,
      description: description ?? product.description,
      image: image ?? product.image,
      category: category ?? product.category,
    );
  }
}
