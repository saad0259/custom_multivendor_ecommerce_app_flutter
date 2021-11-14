import 'package:flutter/material.dart';

MaterialColor lightPrimary = Colors.blue;
Color lightAccent = Colors.white;
Color lightPrimaryText = const Color(0xff111111);

ThemeData lightTheme(BuildContext context) => ThemeData(
      brightness: Brightness.light,
      primaryColorBrightness: Brightness.light,
      scaffoldBackgroundColor: const Color(0xfff6f6f6),
      colorScheme: ColorScheme.fromSwatch(primarySwatch: lightPrimary)
          .copyWith(secondary: lightAccent),
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
              textStyle:
                  MaterialStateProperty.all(const TextStyle(fontSize: 12)),
              foregroundColor: MaterialStateProperty.all(lightPrimary))),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              textStyle: MaterialStateProperty.all(
                const TextStyle(
                  fontSize: 16,
                ),
              ),
              foregroundColor: MaterialStateProperty.all(lightPrimary),
              backgroundColor: MaterialStateProperty.all(lightPrimary))),
      fontFamily: 'Quicksand',
      textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(
              color: lightPrimaryText,
              fontSize: 10,
            ),
            bodyText2: TextStyle(
              color: lightPrimaryText,
              fontSize: 10,
            ),
            headline6: const TextStyle(
              fontSize: 12,
            ),
            headline5: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: lightPrimaryText,
            ),
            headline4: const TextStyle(
              fontSize: 16,
            ),
          ),
    );
