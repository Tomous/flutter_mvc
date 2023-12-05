import 'package:flutter/material.dart';
import 'package:flutter_mvc/router/router.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      defaultTransition: Transition.rightToLeft,
      //默认跳转动画
      getPages: RouterPage.routes,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('MVC'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.toNamed(RouterPage.mvc),
          child: const Text('点击进入列表页面，列表页面采用的是MVC布局'),
        ),
      ),
    );
  }
}
