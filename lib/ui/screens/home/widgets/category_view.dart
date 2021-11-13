import '../../../../models/category.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../providers/category_provider.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categories =
        Provider.of<CategoryProvider>(context).items; // get data from provider
    return SizedBox(
      height: 250,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Category',
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
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: GridView.builder(
                  physics: const ScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1,
                  ),
                  itemCount: categories.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CategoryCard(
                      category: categories[index],
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      key: Key(category.id), // used category id as key for the gridtile widget
      child: Card(
        elevation: 2,
        child: Column(
          children: [
            const Expanded(
                child: Icon(
              Icons.person,
              size: 50.0,
              color: Colors.blue,
            )),
            Container(
              width: double.infinity,
              color: Theme.of(context).primaryColorLight,
              child: Text(
                category.title, // used title of category in category car
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
