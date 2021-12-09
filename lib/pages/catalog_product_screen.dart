import 'package:cart_getx/model/product_model.dart';
import 'package:flutter/material.dart';

class CatalogProduct extends StatelessWidget {
  const CatalogProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        itemCount: Product.products.length,
        itemBuilder: (BuildContext context, int index) {
          return CatalogCardProduct(index: index);
        },
      ),
    );
  }
}

class CatalogCardProduct extends StatelessWidget {
  final int index;

  const CatalogCardProduct({required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(Product.products[index].imageUrl),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              Product.products[index].name,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Text(
              '${Product.products[index].price}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_circle,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}
