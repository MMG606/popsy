import 'package:fluttertest/Controllers/products_controller.dart';
import 'package:get/get.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductsController(), permanent: true);
  }
}
