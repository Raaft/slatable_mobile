import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/modules/auth/view/screens/createScreen.dart';
import 'package:slatable_mobile/modules/auth/view/screens/forgetPasswordScreen.dart';
import 'package:slatable_mobile/modules/auth/view/screens/signInScreen.dart';
import 'package:slatable_mobile/shared/ui/components/titledTextField.dart';
import 'package:slatable_mobile/shared/ui/helper/text_styles.dart';

import 'component.dart';

Widget buildWelcomeButtons(context) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          createColoredButton(context, "Create Account", MyColor.button,
              () => navTo(context, CreateScreen())),
          SizedBox(height: 9),
          createOutLinedButton(
            context,
            "Sign In",
            MyColor.background,
            () => navTo(context, SignInScreen()),
          ),
          SizedBox(height: 9),
          forgetPasswordButton(HexColor("#88898C"), context)
        ],
      ),
    ),
  );
}

forgetPasswordButton(Color color, context) {
  return TextButton(
    onPressed: () {
      navTo(context, ForgetPasswordScreen());
    },
    child: Text("Forgot password?",
        style: GoogleFonts.inter(
            textStyle: TextStyle(
          color: color,
          fontWeight: FontWeight.w700,
          fontSize: 15,
        ))),
  );
}

Widget buildWelcomeText() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Text(
      "Create and share Pro self tapes in seconds.",
      textAlign: TextAlign.center,
      style: TextStyles.causten29BlackMedium600,
    ),
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
          backgroundImage: AssetImage("assets/icons/logoo.png"),
        ),
      ),
      SizedBox(width: 20),
      Text("Slatable",
          style: GoogleFonts.inter(
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ))
    ],
  );
}
