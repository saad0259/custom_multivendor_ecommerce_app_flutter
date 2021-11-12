// ignore_for_file: file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import '../../../providers/category_provider.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: double.infinity,
        child: const Text(
          'Category',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.black,
          ),
        ),
      ),
      GridView.builder(
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          print(index);
          return new Card(
              child: new GridTile(
            footer: Text(
              CategoryProvider().items[index].id,
              style: TextStyle(color: Colors.black),
            ),
            child: new Text(
              CategoryProvider().items[index].id,
              style: TextStyle(
                  color: Colors
                      .black), //just for testing, will fill with image later
            ),
          ));
        },
      ),
    ]);
  }
}
