import 'package:flutter/material.dart';
import 'package:slatable_mobile/config/colors.dart';

createSignInButton(context, String title, Color color) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 11),
    child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(24),
        ),
        child: ElevatedButton(
          onPressed: () {},
          child: Text(title,
              style: TextStyle(
                  color: MyColor.buttonText,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: "NetflixSans")),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(color),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ))),
        )),
  );
}
