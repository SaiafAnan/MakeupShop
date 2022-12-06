import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopx/views/homepage.dart';
import 'package:shopx/views/product_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      getPages: [GetPage(name: "/detail", page: () => ProductDetailPage())],
    );
  }
}
