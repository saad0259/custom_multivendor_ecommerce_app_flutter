// ignore_for_file: prefer_const_constructors
// ignore: todo
// TODO: Remove the Above lines before release

import 'package:flutter/material.dart';
import './widgets/image_slider.dart';
import './widgets/category_view.dart';
import './widgets/featured_view.dart';
import 'widgets/products_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.shop)),
          ],
          title: Text('E_Commerce'),
          centerTitle: true,
        ),
        drawer: Drawer(),

        body: SingleChildScrollView(
          child: Column(
            children: [
              CarouselWithIndicatorDemo(),
              CategoryView(),
              FeaturedView(),
              ProductView(),
            ],
          ),
        ),

        // Center(
        //   child: Text('Hello'),
        // ),
      ),
    );
  }
}
