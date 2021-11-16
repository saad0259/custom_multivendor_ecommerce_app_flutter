import 'package:flutter/material.dart';
import './text_theme.dart';

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
          textStyle: MaterialStateProperty.all(TextStyle(
            fontSize: 12,
            color: primaryTextColor,
          )),
          foregroundColor: MaterialStateProperty.all(
            primaryColor,
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(
            TextStyle(
              fontSize: 16,
              color: primaryTextColor,
            ),
          ),
          foregroundColor: MaterialStateProperty.all(accentColor),
          backgroundColor: MaterialStateProperty.all(primaryColor),
        ),
      ),
      fontFamily: 'Quicksand',
      textTheme: ThemeData.dark().textTheme.merge(textTheme(primaryTextColor)),
    );
