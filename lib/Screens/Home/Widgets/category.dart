// ignore_for_file: file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: const Text(
        'Category',
        style: TextStyle(
          fontSize: 30.0,
          color: Colors.black,
        ),
      ),
    );
  }
}
