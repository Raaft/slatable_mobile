import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class SlatableTextStyles {
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
}
