import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/config/colors.dart';

buildSwitch(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 11.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: HexColor("#E6E8EF"),
              //  fontWeight: FontWeight.w300,
              fontSize: 12,
              fontFamily: "NetflixSans"),
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
