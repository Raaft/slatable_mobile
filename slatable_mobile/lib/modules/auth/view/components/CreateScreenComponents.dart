import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/modules/auth/view/screens/createAccInfoScreen.dart';
import 'package:slatable_mobile/shared/ui/components/titledTextField.dart';

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
createScreenAccButton(context, String title, Color color) {
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
          onPressed: () {
            navTo(context, CreateAccInfoScreen());
          },
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
