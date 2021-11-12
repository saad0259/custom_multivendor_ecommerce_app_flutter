// ignore_for_file: file_names

import 'package:flutter/material.dart';
import './Widgets/image_slider.dart';
import './Widgets/category.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            CarouselWithIndicatorDemo(),
            const Positioned(
              top: 20.0,
              left: 10.0,
              child: Text(
                'LOGO',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
            ),
            const Positioned(
              top: 20.0,
              left: 340.0,
              child: Text(
                'Cart',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
            ),
          ],
        ), //Image Slider
        const SizedBox(
          height: 10.0,
        ),
        Category(),
        // ignore: prefer_const_constructors
      ],
    )

        // Center(
        //   child: Text('Hello'),
        // ),
        );
  }
}
