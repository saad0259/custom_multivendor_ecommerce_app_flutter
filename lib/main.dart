//Dart

//Packages
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

//Files
import './providers/slider_provider.dart';
import './providers/category_provider.dart';
import './providers/product_provider.dart';
import 'ui/screens/home/home_screen.dart';
import './providers/theme_provider.dart';
import 'ui/theme/light_theme.dart';
import 'ui/theme/dark_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
          create: (ctx) => CustomSliderProvider()), // Provider for CustomSlider
      ChangeNotifierProvider(
          create: (ctx) => CategoryProvider()), // Provider for Category
      ChangeNotifierProvider(
          create: (ctx) => ProductProvider()), // Provider for Product
      ChangeNotifierProvider(
          create: (ctx) => ThemeProvider()), // Provider for Theme
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context).isDark;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: themeProvider
          ? darkTheme(context)
          : lightTheme(
              context), // get theme mode from ThemepProvider & pass corresponding theme

      // themeMode: ThemeMode.light,
    );
  }
}
