import 'package:flutter/material.dart';
import '../models/custom_slider.dart';

class CategoryProvider with ChangeNotifier {
  final List<CustomSlider> _items = [
    CustomSlider(id: '1', imageUrl: 'imageUrl', position: 1),
    CustomSlider(id: '2', imageUrl: 'imageUrl', position: 2),
    CustomSlider(id: '3', imageUrl: 'imageUrl', position: 3),
    CustomSlider(id: '4', imageUrl: 'imageUrl', position: 4),
  ];

  List<CustomSlider> get items {
    return [..._items];
  }
}
