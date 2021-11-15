import 'package:flutter/material.dart';

MaterialColor primaryColor = Colors.blue;
Color accentColor = Colors.white;
Color primaryTextColor = const Color(0xff111111);

ThemeData lightTheme(BuildContext context) => ThemeData(
      colorScheme: const ColorScheme.light()
          .copyWith(primary: primaryColor, secondary: accentColor),
      primaryColor: primaryColor,
      primaryColorBrightness: Brightness.light,
      primaryColorLight: Colors.blue.shade300,
      cardColor: accentColor,
      scaffoldBackgroundColor: Colors.white.withAlpha(240),
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
      textTheme: ThemeData.light().textTheme.copyWith(
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
