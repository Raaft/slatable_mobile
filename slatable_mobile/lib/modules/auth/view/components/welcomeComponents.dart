import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/modules/auth/view/screens/createScreen.dart';
import 'package:slatable_mobile/modules/auth/view/screens/signInScreen.dart';
import 'package:slatable_mobile/shared/ui/components/titledTextField.dart';

Widget buildWelcomeButtons(context) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Column(
      children: [
        createAccountButton(context),
        SizedBox(height: 10),
        signInButton(context),
        SizedBox(height: 10),
        forgetPasswordButton(HexColor("#88898C"))
      ],
    ),
  );
}

Container createAccountButton(context) {
  return Container(
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
        color: MyColor.button,
        borderRadius: BorderRadius.circular(25),
      ),
      child: ElevatedButton(
        onPressed: () {
          //=> Sailor.toNamed("/createAccScreen")
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreateScreen()),
          );
        },
        child: Text("Create Account",
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
      ));
}

forgetPasswordButton(Color color) {
  return TextButton(
    onPressed: () {},
    child: Text("Forgot password?",
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
          fontSize: 14,
          fontFamily: "NetflixSans",
        )),
  );
}

Container signInButton(context) {
  return Container(
      height: 56,
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () {navTo(context, SignInScreen());},
        child: Text("Sign In",
            style: TextStyle(
                color: MyColor.buttonText,
                fontWeight: FontWeight.bold,
                fontSize: 14,
                fontFamily: "NetflixSans")),
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: BorderSide(color: Colors.black)))),
      ));
}

Text buildWelcomeText() {
  return Text(
    "Create and share Pro self tapes in seconds.",
    textAlign: TextAlign.center,
    style: TextStyle(
        fontWeight: FontWeight.normal, fontSize: 29, fontFamily: "NetflixSans"),
  );
}

Row buildWelcomeHead() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        height: 58,
        width: 58,
        child: CircleAvatar(
          radius: 58,
          backgroundImage: AssetImage("assets/images/karting.png"),
        ),
      ),
      SizedBox(width: 20),
      Text(
        "Slatable",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            fontFamily: "NetflixSans"),
      )
    ],
  );
}
