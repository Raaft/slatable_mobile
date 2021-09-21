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
import 'package:slatable_mobile/shared/const.dart';
import 'package:slatable_mobile/shared/ui/components/signInComponents.dart';
import 'package:slatable_mobile/shared/ui/components/titledTextField.dart';
import 'package:slatable_mobile/shared/ui/helper/text_styles.dart';

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
              child: Scaffold(
                backgroundColor: Color(0xff121419),
                body: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      SizedBox(
                        height: contextHeight(context) * 0.1,
                      ),
                      Text("Password Reset",
                          textAlign: TextAlign.center, style: TextStyles.head1),
                      SizedBox(
                        height: contextHeight(context) * 0.1,
                      ),
                      createTextField(
                        context,
                        "Email Address",
                        "Enter email address",
                        emailController,
                        TextInputType.emailAddress,
                      ),
                      SizedBox(height: contextHeight(context) * 0.01),
                      createColoredButton(context, "Request Email Reset",
                          MyColor.button, () {}),
                      SizedBox(height: contextHeight(context) * 0.05),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'If we find an account associated with this email address we’ll email a reset link to the email above.',
                          style: TextStyles.forgetPasswordText,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 40.0, horizontal: 20),
                            child: Text(
                              'Tap here to get help with Sign in with Apple and Google sign in.',
                              style: TextStyles.forgetPasswordText,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
