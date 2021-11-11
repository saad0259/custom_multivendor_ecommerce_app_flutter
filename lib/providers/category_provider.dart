import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoryProvider with ChangeNotifier {
  final List<Category> _items = [
    Category('null',
        id: '1', title: 'Electronics', icon: 'icon', popularity: ''),
    Category('null', id: '2', title: 'Cosmetics', icon: 'icon', popularity: ''),
    Category('null', id: '3', title: 'Health', icon: 'icon', popularity: ''),
    Category('null', id: '4', title: 'Transport', icon: 'icon', popularity: ''),
    Category('null', id: '5', title: 'Grocery', icon: 'icon', popularity: ''),
    Category('null', id: '6', title: 'Tools', icon: 'icon', popularity: ''),
  ];

  List<Category> get items {
    return [..._items];
  }
}
