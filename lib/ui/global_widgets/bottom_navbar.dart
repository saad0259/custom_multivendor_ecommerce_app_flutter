import 'package:flutter/material.dart';
import '../screens/home/home_screen.dart';
import '../screens/chats/chats_screen.dart';
import '../screens/notifications/notifications_screen.dart';
import '../screens/profile/profile_screen.dart';
import '../screens/more/more_screen.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final PageController _pageController = PageController();
  int _pageIndex = 0;

  List<Widget>? _screens;

  final _bottomNavKey = GlobalKey();
  final GlobalKey<ScaffoldMessengerState> _scaffoldKey = GlobalKey();

  @override
  void initState() {
    super.initState();

    _screens = const [
      HomePage(),
      ChatsScreen(),
      NotificationsScreen(),
      ProfileScreen(),
      MoreScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      bottomNavigationBar: SalomonBottomBar(
        key: _bottomNavKey,
        itemPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        currentIndex: _pageIndex,
        margin: const EdgeInsets.all(5.0),
        onTap: (index) {
          _pageController.jumpToPage(index);
          _pageIndex = index;
          setState(() {});
        },
        items: [
          SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Home"),
              selectedColor: Colors.purple),
          SalomonBottomBarItem(
              icon: const Icon(Icons.inbox),
              title: const Text("Chats"),
              selectedColor: Colors.pink),
          SalomonBottomBarItem(
              icon: const Icon(Icons.notifications),
              title: const Text("Notifications"),
              selectedColor: Colors.orange),
          SalomonBottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text("Profile"),
              selectedColor: Colors.teal),
          SalomonBottomBarItem(
              icon: const Icon(Icons.grid_view_rounded),
              title: const Text("More"),
              selectedColor: Colors.blue),
        ],
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: _screens!.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return _screens![index];
        },
      ),
    );
  }
}
