import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './widgets/image_slider.dart';
import './widgets/category_view.dart';
import 'widgets/flash_deal_view.dart';
import 'widgets/products_view.dart';
import '../../global_widgets/custom_drawer.dart';
import '../../../providers/theme_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context).isDark;
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color(0xffebebeb),
        appBar: AppBar(
          iconTheme: themeProvider ? Theme.of(context).iconTheme : null,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.shop)),
          ],
          title: const TextField(),
          centerTitle: true,
        ),
        drawer: const CustomDrawer(),

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
