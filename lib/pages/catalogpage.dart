import 'package:cart_getx/pages/cartScreen.dart';
import 'package:cart_getx/pages/catalogproductscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/utils.dart';

class CatalogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog'),
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
