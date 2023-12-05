import 'package:flutter/material.dart';
import 'package:flutter_mvc/MVC/controller/controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MyView extends GetView<MyController> {
  const MyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MVC'),
      ),
      body: GetBuilder<MyController>(
        builder: (_) {
          return ListView.builder(
            itemCount: controller.dataList.length,
            itemExtent: 50,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('${controller.dataList[index].name}'),
              );
            },
          );
        },
      ),
    );
  }
}
