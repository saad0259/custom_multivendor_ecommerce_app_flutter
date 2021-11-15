// ignore_for_file: prefer_const_constructors
// ignore: todo
// TODO: Remove the Above lines before release

import 'package:provider/provider.dart';
import '../../../../providers/product_provider.dart';
import '../../../../models/product.dart';
import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  const ProductView({Key? key}) : super(key: key);

  //TODO: Customize these according to the widget,
  //TODO: add dummy data in product provider and use 'em here

  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductProvider>(context).items;

    return SizedBox(
      height: 700.0,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Products',
                style: Theme.of(context).textTheme.headline5,
              ),
              TextButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      'View more',
                      // style: Theme.of(context).textTheme.headline6,
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_outlined,
                      size: 14.0,
                    ),
                  ],
                ),
                onPressed: () {},
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
              physics: ScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return ProductCard(
                  product: products[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Card(
        child: Column(
          children: [
            Expanded(
                child: Icon(
              Icons.person,
              size: 50.0,
            )),
            Text(
              product.title,
            ),
          ],
        ),
      ),
    );
  }
}
