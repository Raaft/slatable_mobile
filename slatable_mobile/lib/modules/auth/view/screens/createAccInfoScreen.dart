import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/cubit/mainCubit/cubit.dart';
import 'package:slatable_mobile/cubit/mainCubit/states.dart';
import 'package:slatable_mobile/modules/auth/view/components/CreateAccComponents.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';
import 'package:slatable_mobile/shared/const.dart';
import 'package:slatable_mobile/shared/ui/components/titledTextField.dart';

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
                    height: contextHeight(context) - 140,
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        createAccHead("Your Contact Info",
                            "Enter as much info as you can.\n You can always edit, add or update in \n Settings later."),
                        Column(
                          children: [
                            createTextField(
                              context,
                              "Stage name",
                              "Enter name",
                              stageNameController,
                              TextInputType.text,
                            ),
                            createTextField(
                              context,
                              "Union affiliation",
                              "Enter union",
                              unionAffiliationController,
                              TextInputType.text,
                            ),
                            createTextField(
                              context,
                              "Contact number",
                              "Enter contact number",
                              contactNumberController,
                              TextInputType.text,
                            ),
                            createTextField(
                              context,
                              "Email address",
                              "Enter email address",
                              emailController,
                              TextInputType.emailAddress,
                            ),
                          ],
                        ),
                        createTextAndIcon(context),
                        createColoredButton(
                            context,
                            "Next (1/3)",
                            MyColor.button,
                            () => navTo(context, ManagerInfoScreen()))
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
