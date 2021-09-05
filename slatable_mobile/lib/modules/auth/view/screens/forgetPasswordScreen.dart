import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/cubit/mainCubit/cubit.dart';
import 'package:slatable_mobile/cubit/mainCubit/states.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';

import 'package:slatable_mobile/modules/auth/view/components/welcomeComponents.dart';
import 'package:slatable_mobile/shared/const.dart';
import 'package:slatable_mobile/shared/ui/components/signInComponents.dart';
import 'package:slatable_mobile/shared/ui/components/titledTextField.dart';

class ForgetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var signInFormKey = GlobalKey<FormState>();
    var emailController = TextEditingController();

    return BlocConsumer<MainCubit, MainState>(
        listener: (context, state) {},
        builder: (context, state) {
          return SingleChildScrollView(
            child: Container(
              height: contextHeight(context),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Scaffold(
                backgroundColor: Colors.black,
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(107.0),
                  // here the desired height
                  child: AppBar(
                      backgroundColor: Colors.black,
                      elevation: 0,
                      leading: BackButton(
                        color: Colors.black,
                      )),

                  // backgroundColor: Color(0xe1f5fe).withOpacity(1.0),
                ),
                body: SingleChildScrollView(
                  child: SizedBox(
                    height: contextHeight(context) - 140,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Password Reset",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                  fontFamily: "NetflixSans",
                                  color: Colors.white),
                            ),
                            SizedBox(height: 217,),
                            createTextField(
                              context,
                              "Email Address",
                              "Enter email address",
                              emailController,
                              TextInputType.text,
                            ),
                            createColoredButton(
                                context,
                                "Request Email Reset",
                                MyColor.button,
                                () => navTo(context, ForgetPasswordScreen())),
                            Padding(
                              padding: const EdgeInsets.only(top: 45),
                              child: Text(
                                "If we find an account associated with this email address we’ll email a reset link to the email above.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    fontFamily: "NetflixSans",
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 64),
                          child: Text(
                            "Tap here to get help with Sign in with Apple and Google sign in.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                fontFamily: "NetflixSans",
                                color: Colors.white),
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
