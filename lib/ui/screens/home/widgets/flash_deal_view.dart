// ignore_for_file: prefer_const_constructors
// ignore: todo
// TODO: Remove the Above lines before release

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../../../providers/product_provider.dart';
import '../../../../models/product.dart';
import 'package:provider/provider.dart';

class FlashDealView extends StatelessWidget {
  const FlashDealView({Key? key}) : super(key: key);

  //TODO: Customize this widget according to the app design i provided
  //TODO: Use dummy data from product provider here

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
                'Featured Deals',
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
      width: 280,
      margin: EdgeInsets.only(left: 5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        child: Card(
          // color: Colors.blue.shade100,
          child: Row(
            children: [
              Image(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80'),
                height: 150.0,
                width: 120.0,
                fit: BoxFit.cover,
              ),
              SizedBox(
                width: 12.0,
              ),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: SizedBox(
                        // width: 120.0,
                        child: Text(
                          product.title,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                    ),
                    //TODO: add currency logic. use getter inside product model
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$ ${product.price}',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_outline,
                              color: Colors.red,
                            ))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
