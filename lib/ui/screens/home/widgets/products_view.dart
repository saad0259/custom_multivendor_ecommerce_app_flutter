// ignore_for_file: prefer_const_constructors
// ignore: todo
// TODO: Remove the Above lines before release

import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700.0,
      child: Column(
        children: [
          Text(
            'Products',
            style: TextStyle(fontSize: 30.0),
          ),
          // GridView.count(
          //   crossAxisCount: 2,
          //   children: List.generate(8, (index) {
          //     return Container(
          //       margin: EdgeInsets.only(
          //         top: 8.0,
          //         left: 12.0,
          //         bottom: 8.0,
          //         right: 12.0,
          //       ),
          //       decoration: BoxDecoration(
          //         color: Colors.white,
          //         borderRadius: BorderRadius.only(
          //             topLeft: Radius.circular(10),
          //             topRight: Radius.circular(10),
          //             bottomLeft: Radius.circular(10),
          //             bottomRight: Radius.circular(10)),
          //         boxShadow: [
          //           BoxShadow(
          //             color: Colors.white.withOpacity(0.5),
          //             spreadRadius: 5,
          //             blurRadius: 7,
          //             offset: Offset(0, 3), // changes position of shadow
          //           ),
          //         ],
          //       ),
          //       child: Column(
          //         children: [
          //           Expanded(
          //               child: Icon(
          //             Icons.person,
          //             size: 50.0,
          //             color: Colors.blue,
          //           )),
          //           Text(
          //             'Product $index',
          //             style: TextStyle(
          //               fontWeight: FontWeight.bold,
          //             ),
          //           ),
          //         ],
          //       ),
          //     );
          //   }),
          // ),
        ],
      ),
    );
  }
}
