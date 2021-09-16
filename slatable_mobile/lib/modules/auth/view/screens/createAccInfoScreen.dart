import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/cubit/mainCubit/cubit.dart';
import 'package:slatable_mobile/cubit/mainCubit/states.dart';
import 'package:slatable_mobile/modules/auth/view/components/CreateAccComponents.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';

import 'package:slatable_mobile/shared/const.dart';

import 'managerInfoScreen.dart';

class CreateAccInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var signInFormKey = GlobalKey<FormState>();
    var emailController = TextEditingController();
    var stageNameController = TextEditingController();
    var unionAffiliationController = TextEditingController();
    var contactNumberController = TextEditingController();

    return BlocConsumer<MainCubit, MainState>(
        listener: (context, state) {},
        builder: (context, state) {
          return SingleChildScrollView(
            child: Container(
              height: contextHeight(context),
              child: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(107.0),
                  // here the desired height
                  child: AppBar(
                      elevation: 0,
                      leading: BackButton(
                        color: Colors.black,
                      )),

                  // backgroundColor: Color(0xe1f5fe).withOpacity(1.0),
                ),
                body: SingleChildScrollView(
                  child: Container(
                    height: contextHeight(context) - 135,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        createAccHead("Your Contact Info",
                            "Enter as much info as you can.\n You can always edit, add or update in \n Settings later."),
                        SizedBox(height: 22),
                        createTextField(
                          context,
                          "Stage name",
                          "Enter name",
                          stageNameController,
                          TextInputType.text,
                        ),
                        SizedBox(height: 7.6),
                        createTextField(
                          context,
                          "Union affiliation",
                          "Enter union",
                          unionAffiliationController,
                          TextInputType.text,
                        ),
                        SizedBox(height: 7.6),
                        createTextField(
                          context,
                          "Contact number",
                          "Enter contact number",
                          contactNumberController,
                          TextInputType.text,
                        ),
                        SizedBox(height: 7.6),
                        createTextField(
                          context,
                          "Email address",
                          "Enter email address",
                          emailController,
                          TextInputType.emailAddress,
                        ),
                        SizedBox(height: 20),
                        createTextAndIcon(context),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: createColoredButton(
                              context,
                              "Next (1/3)",
                              MyColor.button,
                              ()=> showMyDialog(context,buildMangerDialogComp(context))
                             )),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }

  Container buildMangerDialogComp(BuildContext context) {
    return Container(
                                height: 195,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Do you have a manager?",
                                        style: GoogleFonts.inter(
                                            textStyle:
                                            TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                "Not Yet!",
                                                style: GoogleFonts.inter(
                                                    textStyle: TextStyle(
                                                        fontWeight: FontWeight.w600,
                                                        fontSize: 15,
                                                        color: Colors.black)),
                                              )),
                                          TextButton(
                                              onPressed: () {navTo(context, ManagerInfoScreen());},
                                              child: Text(
                                                "Yes",
                                                style: GoogleFonts.inter(
                                                    textStyle: TextStyle(
                                                        fontWeight: FontWeight.w600,
                                                        fontSize: 15,
                                                        color: Colors.black)),
                                              ))
                                        ],
                                      )
                                    ]));
  }
}
