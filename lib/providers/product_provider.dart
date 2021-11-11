import 'package:flutter/material.dart';
import '../models/product.dart';

class CategoryProvider with ChangeNotifier {
  final List<Product> _items = [
    Product(
        id: '1',
        catId: 'catId',
        icon: 'icon',
        title: 'IphoneX 8gb',
        description: 'description',
        price: '90',
        popularity: ''),
    Product(
        id: '2',
        catId: 'catId',
        icon: 'icon',
        title: 'New IphoneX 4gb',
        description: 'description',
        price: '90',
        popularity: ''),
    Product(
        id: '3',
        catId: 'catId',
        icon: 'icon',
        title: 'Iphone 12 8GB',
        description: 'description',
        price: '90',
        popularity: ''),
    Product(
        id: '4',
        catId: 'catId',
        icon: 'icon',
        title: 'New Iphone 12 4GB',
        description: 'description',
        price: '90',
        popularity: ''),
    Product(
        id: '5',
        catId: 'catId',
        icon: 'icon',
        title: 'Huawei Y9 2019',
        description: 'description',
        price: '90',
        popularity: ''),
    Product(
        id: '6',
        catId: 'catId',
        icon: 'icon',
        title: 'Huawei Y9 Prime',
        description: 'description',
        price: '90',
        popularity: ''),
  ];
  List<Product> get items {
    return [..._items];
  }
}
