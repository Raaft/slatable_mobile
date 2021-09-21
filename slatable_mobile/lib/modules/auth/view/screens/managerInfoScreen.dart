import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/cubit/mainCubit/cubit.dart';
import 'package:slatable_mobile/cubit/mainCubit/states.dart';
import 'package:slatable_mobile/modules/auth/view/components/CreateAccComponents.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';
import 'package:slatable_mobile/modules/auth/view/components/managreInfoComponents.dart';
import 'package:slatable_mobile/modules/auth/view/screens/agentInfoScreen.dart';
import 'package:slatable_mobile/shared/const.dart';
import 'package:slatable_mobile/shared/ui/components/titledTextField.dart';
import 'package:slatable_mobile/shared/ui/helper/export.dart';

class ManagerInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var managerInfoFormKey = GlobalKey<FormState>();
    var nameController = TextEditingController();
    var companyController = TextEditingController();
    var contactNumberController = TextEditingController();
    var emailAddressController = TextEditingController();

    return BlocConsumer<MainCubit, MainState>(
        listener: (context, state) {},
        builder: (context, state) {
          return SingleChildScrollView(
            child: Container(
              height: contextHeight(context),
              child: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(60.0),
                  // here the desired height
                  child: AppBar(
                      elevation: 0,
                      leading: IconButton(
                          onPressed: () => navBack(context),
                          icon: Icon(
                            Icons.keyboard_backspace,
                            color: Colors.black,
                          ))),

                  // backgroundColor: Color(0xe1f5fe).withOpacity(1.0),
                ),
                body: SingleChildScrollView(
                  child: Container(
                    height: contextHeight(context) * .8,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        createAccHead("Manager Info",
                            "Fill in as much as you can.\nYou get to decide later if you want to\ninclude this info with your self tape."),
                        createTextField(context, "Name", "Name", nameController,
                            TextInputType.text),
                        SizedBox(height: 7.6),
                        createTextField(context, "Company", "Company",
                            companyController, TextInputType.text),
                        SizedBox(height: 7.6),
                        createTextField(
                            context,
                            "Contact number",
                            "Contact number",
                            companyController,
                            TextInputType.text),
                        SizedBox(height: 7.6),
                        createTextField(
                            context,
                            "Email address",
                            "Email address",
                            emailAddressController,
                            TextInputType.text),
                        SizedBox(height: 15),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Skip",
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(
                                    fontSize: 14, fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(height: 15),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 34),
                          child: createColoredButton(
                              context,
                              "Next (2/3)",
                              MyColor.button,
                              () => buildMangerDialogComp(context)),
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

Future buildMangerDialogComp(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Do you have a agent?",
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
                navTo(context, AgentInfoScreen());
              },
            )
          ],
        );
      });
}
