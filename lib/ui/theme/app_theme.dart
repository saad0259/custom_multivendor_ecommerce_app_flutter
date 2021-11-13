import 'package:flutter/material.dart';

//TODO: Customize primaryColorDark and primaryColorLight Colors

ThemeData lightTheme(BuildContext context) => ThemeData(
      brightness: Brightness.light,
      primaryColorBrightness: Brightness.light,
      primaryColorDark: Colors.blue.shade900,
      primaryColorLight: Colors.blue.shade100,
      scaffoldBackgroundColor: const Color(0xffebebeb),
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
          .copyWith(secondary: Colors.white),
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
              textStyle:
                  MaterialStateProperty.all(const TextStyle(fontSize: 12)),
              foregroundColor: MaterialStateProperty.all(
                  Theme.of(context).colorScheme.primary))),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              textStyle: MaterialStateProperty.all(
                const TextStyle(
                  fontSize: 16,
                ),
              ),
              foregroundColor: MaterialStateProperty.all(
                  Theme.of(context).colorScheme.secondary),
              backgroundColor: MaterialStateProperty.all(
                  Theme.of(context).colorScheme.primary))),
      fontFamily: 'Quicksand',
      textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: const TextStyle(
              color: Colors.white70,
              fontSize: 10,
            ),
            bodyText2: const TextStyle(
              color: Colors.black87,
              fontSize: 10,
            ),

            headline6: const TextStyle(
              // fontWeight: FontWeight.bold,
              fontSize: 12,
              //color: Colors.black,
            ),
            headline5: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              //color: Colors.black,
            ),
            headline4: const TextStyle(
              // fontWeight: FontWeight.bold,
              fontSize: 16,
              //color: Colors.black,
            ),
            // button: TextStyle(
            //   color: Colors.yellow,
            // )
          ),
    );
