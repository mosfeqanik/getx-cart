import 'package:cart_getx/pages/cart_screen.dart';
import 'package:cart_getx/pages/catalog_product_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/utils.dart';

class CatalogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CatalogProduct(),
            Center(
              child: ElevatedButton(
                onPressed: () => Get.to(() => cartScreen()),
                child: Text('Go to Cart'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
