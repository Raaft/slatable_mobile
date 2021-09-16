import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



createTextAndIcon(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 35),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage("assets/icons/Group.png"),
          width: 16.2,
          height: 17.46,
        ),
        SizedBox(width: 9),
        Text(
          " We never sell your information.",
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(fontSize: 14, fontWeight: FontWeight.w700),
        ),
      ],
    ),
  );
}

createAccHead(String headTitle, String subTitle) {
  return Container(
    padding: EdgeInsets.only(right: 30, left: 30, bottom: 24),
    child: Column(
      //  mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            headTitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                fontFamily: "NetflixSans")),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(textStyle: TextStyle(
            //  fontWeight: FontWeight.w300,
              fontSize: 16,
              fontFamily: "NetflixSans"),)
        )
      ],
    ),
  );
}

