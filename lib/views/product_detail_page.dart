import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shopx/controllers/product_controllers.dart';
import 'package:shopx/models/product.dart';

class ProductDetailPage extends StatelessWidget {
  ProductDetailPage({
    Key? key,
  }) : super(key: key);

  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Get.arguments['title']),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Container(
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(5.0, 5.0),
                        ),
                      ]),
                  child: Image.network(
                    Get.arguments['image'],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                Get.arguments['description'],
                maxLines: 20,
                style: TextStyle(
                    fontFamily: 'avenir', fontWeight: FontWeight.w800),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
