import 'package:flutter/material.dart';
import 'package:slatable_mobile/shared/ui/helper/palette.dart';


// this class controls the app themes.
final appTheme = ThemeData(
  fontFamily: "Montserrat",
  visualDensity: VisualDensity.adaptivePlatformDensity,
  scaffoldBackgroundColor: Palette.ebony,
  textTheme: TextTheme(
    headline1: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
      color: Palette.white,

      fontFamily: "Montserrat",
    )),

);

final lightAppTheme = ThemeData(
  fontFamily: "Montserrat",
  visualDensity: VisualDensity.adaptivePlatformDensity,
  scaffoldBackgroundColor: Palette.white,
  textTheme: TextTheme(
    headline1: TextStyle(
      fontSize: 15,
      color: Palette.ebony,
      fontWeight: FontWeight.bold,
      fontFamily: "Montserrat",
    ),
  )
);
