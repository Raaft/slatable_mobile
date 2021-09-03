import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
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

    scaffoldBackgroundColor: HexColor("#F3F6FC"),
    appBarTheme:
        AppBarTheme(backgroundColor: HexColor("#F3F6FC"), elevation: 0),
    backgroundColor: HexColor("#F3F6FC"),
    fontFamily: "Montserrat",
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 15,
        color: Palette.ebony,
        fontWeight: FontWeight.bold,
        fontFamily: "Montserrat",
      ),
    ));
