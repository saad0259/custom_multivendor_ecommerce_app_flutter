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
      height: 900.0,
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
              physics: const ScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
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
        child: Stack(
          children: [
            Column(
              children: [
                const Expanded(
                  child: Image(
                    image: NetworkImage(
                        'https://meetanshi.com/blog/wp-content/uploads/2020/02/12-Benefits-Of-E-commerce-Product-Customization-Personalization.png'),
                    height: 150.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(
                    5.0,
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 25.0,
                        child: Text(
                          product.title,
                          style: Theme.of(context).textTheme.headline5,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$ ${product.price}',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                            ),
                            Container(
                              padding: const EdgeInsets.only(right: 5.0),
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
                      ),
                      const SizedBox(
                          width: double.infinity,
                          height: 15.0,
                          child: Text(
                            '\$150',
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                            ),
                            textAlign: TextAlign.left,
                          )),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.only(
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
      ),
    );
  }
}
