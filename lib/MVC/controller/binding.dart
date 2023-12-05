import 'package:flutter_mvc/MVC/controller/controller.dart';
import 'package:get/instance_manager.dart';

class Mybinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyController>(() => MyController());
  }
}
