import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/shared/ui/helper/export.dart';

buildSwitch(String title, bool isBig) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 11.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: isBig ? TextStyles.agreeToPolicyBig : TextStyles.agreeToPolicy,
        ),
        isBig
            ? SizedBox(
                width: 10,
              )
            : Container(),
        CupertinoSwitch(
          value: false,
          onChanged: (v) {},
          trackColor: Colors.white,
        ),
      ],
    ),
  );
}
