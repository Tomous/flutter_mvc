import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_mvc/MVC/model/model.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  final List<ListModel> dataList = <ListModel>[].obs;
  @override
  void onReady() {
    _getData(); //获取数据
    super.onReady();
  }

  Future<void> _getData() async {
    String jsonData = await loadJsonData();
    Map<String, dynamic> data = json.decode(jsonData);
    dataList.clear();
    dataList.addAll(
        data['data'].map<ListModel>((e) => ListModel.fromJson(e)).toList());
    update();
  }
}

Future<String> loadJsonData() async {
  return await rootBundle.loadString('assets/json/list.json');
}
