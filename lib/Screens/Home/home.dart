// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import './Widgets/image_slider.dart';
import './Widgets/category.dart';
import './Widgets/Favourite.dart';
import './Widgets/products.dart';

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

        body: ListView(
          children: [
            Container(
              color: Colors.blue,
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0),
                  ),
                  child: CarouselWithIndicatorDemo()),
            ),
            Container(
              color: Colors.blue,
              width: double.infinity,
              child: Text(
                'Category',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            Category(),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              color: Colors.white,
              width: double.infinity,
              child: Text(
                'favourites',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            Container(
              height: 200.0,
              color: Colors.white,
              child: Favourites(),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              color: Colors.white,
              width: double.infinity,
              child: Text(
                'Products',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            Product(),
          ],
        ),

        // Center(
        //   child: Text('Hello'),
        // ),
      ),
    );
  }
}
