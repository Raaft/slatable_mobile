import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/cubit/mainCubit/cubit.dart';
import 'package:slatable_mobile/cubit/mainCubit/states.dart';
import 'package:slatable_mobile/modules/auth/view/components/CreateAccComponents.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';
import 'package:slatable_mobile/modules/auth/view/components/managreInfoComponents.dart';
import 'package:slatable_mobile/modules/auth/view/screens/agentInfoScreen.dart';
import 'package:slatable_mobile/shared/const.dart';
import 'package:slatable_mobile/shared/ui/components/titledTextField.dart';

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
                    height: contextHeight(context)-140,

                    child: Column(
                      children: [
                        createAccHead("Manager Info",
                            "Fill in as much as you can.You get to decide later if you want to include this info with your self tape."),
                        createTextField(context, "Name", "Name", nameController,
                            TextInputType.text),
                        createTextField(context, "Company", "Company",
                            companyController, TextInputType.text),
                        createTextField(context, "Contact number", "Contact number",
                            companyController, TextInputType.text),
                        createTextField(context, "Email address", "Email address",
                            emailAddressController, TextInputType.text),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 22),
                          child: TextButton(
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
                        ),

                        createColoredButton(context,"Next (2/3)", MyColor.button,
                                () => navTo(context, AgentInfoScreen())),
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
