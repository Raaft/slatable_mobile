import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/cubit/mainCubit/cubit.dart';
import 'package:slatable_mobile/cubit/mainCubit/states.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';

import 'package:slatable_mobile/modules/auth/view/components/welcomeComponents.dart';
import 'package:slatable_mobile/modules/auth/view/screens/notificationsScreen.dart';
import 'package:slatable_mobile/modules/home/view/Screens/homelightEmptyScreen.dart';
import 'package:slatable_mobile/shared/const.dart';
import 'package:slatable_mobile/shared/ui/components/signInComponents.dart';
import 'package:slatable_mobile/shared/ui/helper/back_arrow.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var signInFormKey = GlobalKey<FormState>();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    return BlocConsumer<MainCubit, MainState>(
        listener: (context, state) {},
        builder: (context, state) {
          return SingleChildScrollView(
            child: Container(
              height: contextHeight(context),
              child: Scaffold(
                backgroundColor: Colors.black,
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(107.0),
                  // here the desired height
                  child: back(context, Colors.black,Colors.white),

                  // backgroundColor: Color(0xe1f5fe).withOpacity(1.0),
                ),
                body: SingleChildScrollView(
                  child: Container(
                    height: contextHeight(context) - 140,
padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            "Sign in",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 32,
                                color: Colors.white))
                        ),
                        Column(
                          children: [
                            createTextField(
                              context,
                              "Email Address",
                              "Enter email address",
                              emailController,
                              TextInputType.text,
                            ),
                            SizedBox(height: 10),
                            createTextField(
                              context,
                              "Password",
                              "Choose password",
                              passwordController,
                              TextInputType.visiblePassword,
                            ),
                            SizedBox(height: 10),

                            createColoredButton(
                                context, "Sign in", MyColor.button, () {
                              navTo(context, NotificationsScreen());
                            }),
                            SizedBox(height: 33),
                            forgetPasswordButton(HexColor("E6E8EF"), context)
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 50,right: 20,left: 20),
                          child: Column(
                            children: [
                              createSignInButton(context,
                                  " Sign up with Apple button", Colors.white),
                              SizedBox(height: 14),
                              createSignInButton(context,
                                  " Sign in with Google button", Colors.white)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
