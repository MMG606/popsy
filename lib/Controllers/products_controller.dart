import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertest/Models/products.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ProductsController extends GetxController {
  late ScrollController scrollController;
  var products_List = <Product>[].obs;
  var products_details = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  Future fetchProducts() async {
    String apiUrl = 'https://dummyjson.com/products';

    final response = await http.get(Uri.parse(apiUrl));

    final fetchedData = (json.decode(response.body));

    if (response.statusCode == 200) {
      products_List.addAll(ProductFromJson(fetchedData['products']));
    } else {
      throw Exception('Failed to load products');
    }
  }
}
