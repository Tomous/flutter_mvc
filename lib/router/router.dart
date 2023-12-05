import 'package:flutter_mvc/MVC/controller/binding.dart';
import 'package:flutter_mvc/MVC/view/view.dart';
import 'package:flutter_mvc/main.dart';
import 'package:get/get.dart';

class RouterPage {
  static const String home = '/';
  static const String mvc = '/mvc';

  static final routes = [
    GetPage(
      name: home,
      page: () => const MyHomePage(),
    ),
    GetPage(
      name: mvc,
      page: () => const MyView(),
      binding: Mybinding(),
    ),
  ];
}
