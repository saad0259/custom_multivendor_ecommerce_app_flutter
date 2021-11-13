// ignore_for_file: prefer_const_constructors
// ignore: todo
// TODO: Remove the Above lines before release

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../../../providers/product_provider.dart';
import '../../../../models/product.dart';
import 'package:provider/provider.dart';

class FeaturedView extends StatelessWidget {
  const FeaturedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final featuredProducts = Provider.of<ProductProvider>(context).items;
    return SizedBox(
      height: 200,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Featured Products',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'View more',
                    ),
                    Icon(Icons.next_plan_outlined),
                  ],
                ),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(
            height: 150,
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: featuredProducts.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return FeaturedProductCard(
                        product: featuredProducts[index],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FeaturedProductCard extends StatelessWidget {
  const FeaturedProductCard({Key? key, required this.product})
      : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      margin: EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        child: Container(
          color: Colors.blue.shade100,
          child: Row(
            children: [
              Image(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80'),
                height: 200.0,
                width: 150.0,
                fit: BoxFit.fill,
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                children: [
                  Expanded(
                    child: Center(
                      child: Container(
                        width: 140.0,
                        child: Text(
                          product.title,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //TODO: add currency logic. use getter inside product model
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$ ${product.price}',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_outline,
                            color: Colors.red,
                          ))
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
