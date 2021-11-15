import 'package:custom_multivendor_ecommerce_app_flutter/ui/theme/dark_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../../../providers/product_provider.dart';
import '../../../../models/product.dart';
import 'package:provider/provider.dart';

class FlashDealView extends StatelessWidget {
  const FlashDealView({Key? key}) : super(key: key);

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
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      width: 280,
      margin: const EdgeInsets.only(left: 5.0),
      child: Stack(
        children: [
          Card(
            // color: Colors.blue.shade100,
            child: Row(
              children: [
                const Image(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80'),
                  height: 150.0,
                  width: 120.0,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 12.0,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 35.0,
                        width: double.infinity,
                        child: Text(
                          product.title,
                          style: Theme.of(context).textTheme.headline5,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      const SizedBox(
                          width: double.infinity,
                          height: 10.0,
                          child: Text(
                            '\$150',
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                            ),
                            textAlign: TextAlign.left,
                          )),
                      //TODO: add currency logic. use getter inside product model
                      SizedBox(
                        height: 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$ ${product.price}',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(color: primaryColor),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 5.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Data',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(color: Colors.yellow[400]),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[400],
                                    size: 15.0,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
              top: 5.0,
              left: 222,
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5.0),
                  ),
                ),
                child: Text(
                  '30% off',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ))
        ],
      ),
    );
  }
}
