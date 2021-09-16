import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

buildSwitch(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 11.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(textStyle: TextStyle(
              color: HexColor("#E6E8EF"),
                fontWeight: FontWeight.w400,
              fontSize: 12,
              fontFamily: "NetflixSans")),
        ),
        Switch(
          value: true,
          onChanged: (va) {},
          activeColor: Colors.blue,
        )
      ],
    ),
  );
}
