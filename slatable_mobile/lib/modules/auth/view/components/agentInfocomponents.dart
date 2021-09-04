import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/modules/auth/view/screens/cardReviewScreen.dart';
import 'package:slatable_mobile/shared/ui/components/titledTextField.dart';

createNextCardReviewButton(context, String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30.0),
    child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
          color: MyColor.button,
          borderRadius: BorderRadius.circular(25),
        ),
        child: ElevatedButton(
          onPressed: (){ navTo(context, CardReviewScreen());},
          child: Text(title,
              style: TextStyle(
                  color: MyColor.buttonText,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: "NetflixSans")),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(MyColor.button),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ))),
        )),
  );
}
