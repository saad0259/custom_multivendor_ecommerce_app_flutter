import 'package:flutter/material.dart';

TextTheme textTheme(primaryTextColor) {
  return TextTheme(
    bodyText1: TextStyle(
      color: primaryTextColor,
      fontSize: 10,
      fontWeight: FontWeight.bold,
    ),
    bodyText2: TextStyle(
      color: primaryTextColor,
      fontSize: 10,
      fontWeight: FontWeight.bold,
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
  );
}
