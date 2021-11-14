// ignore_for_file: prefer_const_constructors
// ignore: todo
// TODO: Remove the Above lines before release

import 'package:flutter/material.dart';
import './widgets/image_slider.dart';
import './widgets/category_view.dart';
import 'widgets/flash_deal_view.dart';
import 'widgets/products_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color(0xffebebeb),
        //TODO: Add and customize a search bar
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.shop)),
          ],
          title: TextField(),
          centerTitle: true,
        ),
        drawer: Drawer(),

        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
            child: Column(
              children: const [
                CarouselWithIndicatorDemo(),
                CategoryView(),
                FlashDealView(),
                ProductView(),
              ],
            ),
          ),
        ),

        // Center(
        //   child: Text('Hello'),
        // ),
      ),
    );
  }
}
