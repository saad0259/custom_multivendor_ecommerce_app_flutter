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
    return Container(
      height: 250,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Category',
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
          Expanded(
            child: Container(
              // decoration: BoxDecoration(
              //   color: Colors.grey,
              //   boxShadow: [
              //     BoxShadow(
              //       color: Colors.blue,
              //       spreadRadius: 5,
              //       blurRadius: 7,
              //       offset: Offset(0, 3), // changes position of shadow
              //     ),
              //   ],
              // ),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: GridView.builder(
                  physics: ScrollPhysics(),
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
        elevation: 3,
        child: Column(
          children: [
            Expanded(
                child: Icon(
              Icons.person,
              size: 50.0,
              color: Colors.blue,
            )),
            Container(
              width: double.infinity,
              color: Colors.blue.shade100,
              child: Text(
                category.title, // used title of category in category car
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
