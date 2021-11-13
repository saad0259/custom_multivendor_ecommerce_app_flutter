import 'package:flutter/material.dart';

//TODO: Customize primaryColorDark and primaryColorLight Colors

ThemeData lightTheme(BuildContext context) => ThemeData(
      brightness: Brightness.light,
      // primaryColorBrightness: Brightness.light,
      // primaryColorDark: Colors.blue.shade900,
      // primaryColorLight: Colors.blue.shade300,
      scaffoldBackgroundColor: const Color(0xffebebeb),
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
          .copyWith(secondary: Colors.white),
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
              textStyle: MaterialStateProperty.all(
                const TextStyle(
                  fontSize: 16,
                ),
              ),
              backgroundColor: MaterialStateProperty.all(
                  Theme.of(context).colorScheme.primary),
              foregroundColor: MaterialStateProperty.all(
                  Theme.of(context).colorScheme.secondary))),

      textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: const TextStyle(color: Color(0xff112222)),
            bodyText2: const TextStyle(color: Color(0xff112222)),

            headline6: const TextStyle(
              // fontWeight: FontWeight.bold,
              fontSize: 16,
              //color: Colors.black,
            ),
            headline5: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              //color: Colors.black,
            ),
            headline4: const TextStyle(
              // fontWeight: FontWeight.bold,
              fontSize: 25,
              //color: Colors.black,
            ),
            // button: TextStyle(
            //   color: Colors.yellow,
            // )
          ),
    );
