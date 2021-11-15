// ignore_for_file: prefer_const_constructors
// ignore: todo
// TODO: Remove the Above lines before release

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './widgets/image_slider.dart';
import './widgets/category_view.dart';
import 'widgets/flash_deal_view.dart';
import 'widgets/products_view.dart';
import '../../global_widgets/custom_drawer.dart';
import '../../../providers/theme_provider.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return null;
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return null;
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return Container();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context).isDark;
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color(0xffebebeb),
        //TODO: Add and customize a search bar
        appBar: AppBar(
          iconTheme: themeProvider ? Theme.of(context).iconTheme : null,
          actions: [
            IconButton(
                onPressed: () {
                  showSearch(
                      context: context, delegate: CustomSearchDelegate());
                },
                icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.shop)),
          ],
          // title: TextField(),
          centerTitle: true,
        ),
        drawer: CustomDrawer(),

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
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            SalomonBottomBarItem(
                icon: Icon(Icons.home),
                title: Text("Home"),
                selectedColor: Colors.purple),
            SalomonBottomBarItem(
                icon: Icon(Icons.inbox),
                title: Text("Chats"),
                selectedColor: Colors.pink),
            SalomonBottomBarItem(
                icon: Icon(Icons.notifications),
                title: Text("Orders"),
                selectedColor: Colors.orange),
            SalomonBottomBarItem(
                icon: Icon(Icons.person),
                title: Text("Profile"),
                selectedColor: Colors.teal),
            SalomonBottomBarItem(
                icon: Icon(Icons.grid_view_rounded),
                title: Text("More"),
                selectedColor: Colors.blue),
          ],
        ),
      ),
    );
  }
}
