import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/Controllers/products_controller.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails({Key? key}) : super(key: key);
  final productsController = Get.put(ProductsController());
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return SingleChildScrollView(
      child: Container(
        color: const Color.fromARGB(255, 223, 223, 223),
        height: height * 0.6,
        width: width,
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('ID: ${productsController.products_details[0].id}'),
              Text('Title: ${productsController.products_details[0].title}'),
              Text(
                'Description: ${productsController.products_details[0].description}',
                textAlign: TextAlign.center,
              ),
              Text('Price: ${productsController.products_details[0].price}\$'),
              Text('Rating: ${productsController.products_details[0].rating}'),
              Text('Brand: ${productsController.products_details[0].brand}'),
              Text(
                  'Category: ${productsController.products_details[0].category}'),
              CarouselSlider.builder(
                itemCount: productsController.products_details[0].images.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(productsController
                      .products_details[0].images[itemIndex]
                      .toString()),
                ),
                options: CarouselOptions(
                    autoPlayInterval: const Duration(seconds: 2),
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                    aspectRatio: 2.0,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    scrollDirection: Axis.horizontal),
              )
            ],
          ),
        ),
      ),
    );
  }
}
