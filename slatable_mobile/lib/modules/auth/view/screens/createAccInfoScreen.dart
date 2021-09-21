import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/cubit/mainCubit/cubit.dart';
import 'package:slatable_mobile/cubit/mainCubit/states.dart';
import 'package:slatable_mobile/modules/auth/view/components/CreateAccComponents.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';

import 'package:slatable_mobile/shared/const.dart';
import 'package:slatable_mobile/shared/ui/components/custom_container.dart';
import 'package:slatable_mobile/shared/ui/helper/export.dart';

import 'managerInfoScreen.dart';

class CreateAccInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var signInFormKey = GlobalKey<FormState>();
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
                  preferredSize: Size.fromHeight(60.0),
                  child: AppBar(
                    elevation: 0,
                    leading: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.keyboard_backspace,
                          color: Palette.black,
                        )),
                  ),
                ),
                body: SingleChildScrollView(
                  child: Container(
                    height: contextHeight(context) * .9,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        verticalSpace(5),
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
                        SizedBox(height: 10),
                        createTextAndIcon(context),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24),
                            child: createColoredButton(
                              context,
                              "Next (1/3)",
                              MyColor.button,
                              () => buildMangerDialogComp(context),
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

  Future buildMangerDialogComp(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Do you have a manager?",
              textAlign: TextAlign.left,
              style: TextStyles.causten15BlackMedium600,
            ),
            actions: [
              TextButton(
                child:
                    Text("Not Yet!", style: TextStyles.causten15BlackMedium600),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              TextButton(
                child: Text("Yes", style: TextStyles.causten15BlackMedium600),
                onPressed: () {
                  navTo(context, ManagerInfoScreen());
                },
              )
            ],
          );
        });
  }
}
