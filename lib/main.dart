// ignore_for_file: prefer_const_constructors
// ignore: todo
// TODO: Remove the Above lines before release

//Dart

//Packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//Files
import './providers/slider_provider.dart';
import './providers/category_provider.dart';
import './providers/product_provider.dart';
import 'ui/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (ctx) =>
                CustomSliderProvider()), // Provider for CustomSlider
        ChangeNotifierProvider(
            create: (ctx) => CategoryProvider()), // Provider for Category
        ChangeNotifierProvider(
            create: (ctx) => ProductProvider()), // Provider for Product
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
