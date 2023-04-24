import 'package:flutter/material.dart';
import 'package:fluttertest/Bindings/getx_bindings.dart';
import 'package:fluttertest/Screens/home_page.dart';
import 'package:get/get.dart';

import 'Controllers/products_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBinding(),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
