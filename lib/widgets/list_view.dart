import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/products_controller.dart';

class ProductList extends StatelessWidget {
  ProductList({Key? key}) : super(key: key);
  final productsController = Get.put(ProductsController());
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return SizedBox(
        height: height * 0.3,
        child: Obx(
          () => ListView.builder(
              itemCount: productsController.products_List.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: width,
                  height: 50,
                  child: InkWell(
                    child: Text(
                      productsController.products_List[index].title,
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {
                      productsController.products_details.clear();
                      productsController.products_details
                          .add(productsController.products_List[index]);
                    },
                  ),
                );
              }),
        ));
  }
}
