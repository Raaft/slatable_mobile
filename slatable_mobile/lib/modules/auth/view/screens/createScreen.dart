import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/cubit/mainCubit/cubit.dart';
import 'package:slatable_mobile/cubit/mainCubit/states.dart';
import 'package:slatable_mobile/modules/auth/view/components/CreateScreenComponents.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';

import 'package:slatable_mobile/modules/auth/view/components/welcomeComponents.dart';
import 'package:slatable_mobile/shared/const.dart';
import 'package:slatable_mobile/shared/ui/components/signInComponents.dart';
import 'package:slatable_mobile/shared/ui/components/titledTextField.dart';
import 'package:slatable_mobile/shared/ui/helper/back_arrow.dart';
import 'package:slatable_mobile/shared/ui/helper/export.dart';

import 'createAccInfoScreen.dart';

class CreateScreen extends StatelessWidget {
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
                backgroundColor: Color(0xff121419),
                body: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: ListView(
                    children: [
                      SizedBox(
                        height: contextHeight(context) * 0.055,
                      ),
                      Text("Create Account",
                          textAlign: TextAlign.center, style: TextStyles.head1),
                      SizedBox(
                        height: contextHeight(context) * 0.055,
                      ),
                      Column(
                        children: [
                          createTextField(
                            context,
                            "Email Address",
                            "Enter email address",
                            emailController,
                            TextInputType.emailAddress,
                          ),
                          SizedBox(height: 8),
                          createTextField(
                            context,
                            "Password",
                            "Choose password",
                            passwordController,
                            TextInputType.emailAddress,
                          ),
                          SizedBox(height: 19),
                          BuildSwitch(
                              "I agree to the Privacy Policy and Terms of Service",
                              false),
                          SizedBox(height: 31),
                          createColoredButton(
                              context,
                              "Create Account",
                              MyColor.button,
                              () => navTo(context, CreateAccInfoScreen())),
                          SizedBox(height: 20),
                          Center(
                            child: BuildSwitch(
                                "Please add me to your mailing list", true),
                          ),
                          SizedBox(height: contextHeight(context) * 0.1),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50),
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
          );
        });
  }
}
