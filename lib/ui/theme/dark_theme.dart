import 'package:flutter/material.dart';

Color primaryColor = Colors.blue.shade900;
Color accentColor = Colors.grey.withAlpha(30);
Color primaryTextColor = const Color(0xffcccccc);

ThemeData darkTheme(BuildContext context) => ThemeData(
      colorScheme: const ColorScheme.dark()
          .copyWith(primary: primaryColor, secondary: accentColor),
      primaryColor: primaryColor,
      primaryColorBrightness: Brightness.dark,
      primaryColorLight: Colors.blue.shade900,
      cardColor: accentColor,
      scaffoldBackgroundColor: Colors.black87,
      iconTheme: IconThemeData(color: primaryColor),
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
              textStyle:
                  MaterialStateProperty.all(const TextStyle(fontSize: 12)),
              foregroundColor: MaterialStateProperty.all(primaryColor))),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              textStyle: MaterialStateProperty.all(
                const TextStyle(
                  fontSize: 16,
                ),
              ),
              foregroundColor: MaterialStateProperty.all(accentColor),
              backgroundColor: MaterialStateProperty.all(primaryColor))),
      fontFamily: 'Quicksand',
      textTheme: ThemeData.dark().textTheme.copyWith(
            bodyText1: TextStyle(
              color: primaryTextColor,
              fontSize: 10,
            ),
            bodyText2: TextStyle(
              color: primaryTextColor,
              fontSize: 10,
            ),
            headline6: const TextStyle(
              fontSize: 12,
            ),
            headline5: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: primaryTextColor,
            ),
            headline4: const TextStyle(
              fontSize: 16,
            ),
          ),
    );
