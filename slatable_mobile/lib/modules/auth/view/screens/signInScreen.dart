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
import 'package:slatable_mobile/modules/auth/view/screens/forgetPasswordScreen.dart';
import 'package:slatable_mobile/modules/auth/view/screens/notificationsScreen.dart';
import 'package:slatable_mobile/modules/home/view/Screens/homelightEmptyScreen.dart';
import 'package:slatable_mobile/shared/const.dart';
import 'package:slatable_mobile/shared/ui/components/signInComponents.dart';
import 'package:slatable_mobile/shared/ui/helper/back_arrow.dart';
import 'package:slatable_mobile/shared/ui/helper/text_styles.dart';

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
                backgroundColor: Color(0xff121419),
                body: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      SizedBox(
                        height: contextHeight(context) * 0.1,
                      ),
                      Text("Sign in",
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
                      SizedBox(height: 8),
                      createTextField(
                        context,
                        "Password",
                        "Choose password",
                        passwordController,
                        TextInputType.emailAddress,
                      ),
                      SizedBox(height: contextHeight(context) * 0.01),
                      createColoredButton(context, "Sign in", MyColor.button,
                          () => navTo(context, NotificationsScreen())),
                      SizedBox(height: contextHeight(context) * 0.05),
                      GestureDetector(
                        onTap: () => navTo(context, ForgetPasswordScreen()),
                        child: Text(
                          'Forget your password? ',
                          style: TextStyles.agreeToPolicyBig,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 50),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              createSignInButton(context,
                                  " Sign in with Apple button", Colors.white),
                              SizedBox(height: 14),
                              createSignInButton(context,
                                  " Sign in with Google button", Colors.white)
                            ],
                          ),
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
