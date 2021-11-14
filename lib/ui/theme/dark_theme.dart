import 'package:flutter/material.dart';

MaterialColor darkPrimary = Colors.blue;
Color darkAccent = const Color(0xff111111);
Color darkPrimaryText = const Color(0xffcccccc);

ThemeData darkTheme(BuildContext context) => ThemeData(
      primaryColorBrightness: Brightness.dark,
      shadowColor: darkPrimaryText,
      primaryColorLight: Colors.blue.shade900,
      cardColor: darkAccent,
      scaffoldBackgroundColor: const Color(0xff191919),
      colorScheme: ColorScheme.fromSwatch(primarySwatch: darkPrimary)
          .copyWith(secondary: darkAccent),
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
              textStyle:
                  MaterialStateProperty.all(const TextStyle(fontSize: 12)),
              foregroundColor: MaterialStateProperty.all(darkPrimary))),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              textStyle: MaterialStateProperty.all(
                const TextStyle(
                  fontSize: 16,
                ),
              ),
              foregroundColor: MaterialStateProperty.all(darkAccent),
              backgroundColor: MaterialStateProperty.all(darkPrimary))),
      fontFamily: 'Quicksand',
      textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(
              color: darkPrimaryText,
              fontSize: 10,
            ),
            bodyText2: TextStyle(
              color: darkPrimaryText,
              fontSize: 10,
            ),
            headline6: const TextStyle(
              fontSize: 12,
            ),
            headline5: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: darkPrimaryText,
            ),
            headline4: const TextStyle(
              fontSize: 16,
            ),
          ),
    );
