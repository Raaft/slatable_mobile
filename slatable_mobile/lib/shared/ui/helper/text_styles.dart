import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slatable_mobile/shared/ui/helper/palette.dart';

class TextStyles {
  static final baseText = TextStyle(
      color: Color(0xff483F23),
      fontWeight: FontWeight.bold,
      fontSize: 14,
      fontFamily: "NetflixSans");

  static final head1 = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 32,
      fontFamily: "NetflixSans",
      color: Color(0xffE6E8EF));

  static final agreeToPolicy = GoogleFonts.inter(
      textStyle: TextStyle(
    color: Color(0xffE6E8EF),
    fontWeight: FontWeight.w400,
    fontSize: 12,
  ));

  static final agreeToPolicyBig = GoogleFonts.inter(
      textStyle: TextStyle(
    color: Color(0xffE6E8EF),
    fontWeight: FontWeight.w400,
    fontSize: 16,
  ));

  static final signInWithText = GoogleFonts.inter(
      textStyle: TextStyle(
    color: Color(0xff483F23),
    fontWeight: FontWeight.w300,
    fontSize: 16,
  ));

  static final forgetPasswordText = GoogleFonts.inter(
      textStyle: TextStyle(
    color: Color(0xffE6E8EF),
    fontWeight: FontWeight.w300,
    fontSize: 16,
  ));

  static final mainYellowButton = GoogleFonts.inter(
      textStyle: TextStyle(
    color: Color(0xff483F23),
    fontWeight: FontWeight.bold,
    fontSize: 14,
  ));
}
