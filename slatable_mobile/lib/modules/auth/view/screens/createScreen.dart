import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/cubit/mainCubit/cubit.dart';
import 'package:slatable_mobile/cubit/mainCubit/states.dart';
import 'package:slatable_mobile/modules/auth/view/components/CreateScreenComponents.dart';

import 'package:slatable_mobile/modules/auth/view/components/welcomeComponents.dart';
import 'package:slatable_mobile/shared/ui/components/signInComponents.dart';
import 'package:slatable_mobile/shared/ui/components/titledTextField.dart';

class CreateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.black,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(107.0), // here the desired height
              child: AppBar(
                  backgroundColor: Colors.black,
                  elevation: 0,
                  leading: BackButton(
                    color: Colors.black,
                  )),

              // backgroundColor: Color(0xe1f5fe).withOpacity(1.0),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Create Account",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      fontFamily: "NetflixSans",
                      color: Colors.white),
                ),
                Column(
                  children: [
                    createTextField(
                        context, "Email Address", "Enter email address"),
                    createTextField(context, "Password", "Choose password"),
                    buildSwitch(
                        "I agree to the Privacy Policy and Terms of Service"),
                    SizedBox(height: 22),
                    createScreenAccButton(
                        context, "Create Account", MyColor.button),
                    buildSwitch("Please add me to your mailing list"),
                    SizedBox(height: 8),
                    forgetPasswordButton(HexColor("E6E8EF"))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Column(
                    children: [
                      createSignInButton(
                          context, " Sign up with Apple button", Colors.white),
                      SizedBox(height: 14),
                      createSignInButton(
                          context, " Sign in with Google button", Colors.white)
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
