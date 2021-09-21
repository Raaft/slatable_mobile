import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slatable_mobile/config/colors.dart';
import 'package:slatable_mobile/cubit/mainCubit/cubit.dart';
import 'package:slatable_mobile/cubit/mainCubit/states.dart';
import 'package:slatable_mobile/modules/auth/view/components/CreateAccComponents.dart';
import 'package:slatable_mobile/modules/auth/view/components/component.dart';
import 'package:slatable_mobile/modules/auth/view/screens/cardReviewScreen.dart';
import 'package:slatable_mobile/shared/const.dart';

class AgentInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var agentFormKey = GlobalKey<FormState>();
    var nameController = TextEditingController();
    var emailController = TextEditingController();
    var companyController = TextEditingController();
    var contactNumberController = TextEditingController();
    return BlocConsumer<MainCubit, MainState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(60.0), // here the desired height
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
                    createAccHead("Agent Info",
                        "Fill in as much as you can. \nYou get to decide later if you want to include this info with your self tape."),
                    SizedBox(height: 7.6),
                    createTextField(
                      context,
                      "Name",
                      "Name",
                      nameController,
                      TextInputType.text,
                    ),
                    SizedBox(height: 7.6),
                    createTextField(
                      context,
                      "Company",
                      "Company",
                      companyController,
                      TextInputType.text,
                    ),
                    SizedBox(height: 7.6),
                    createTextField(
                      context,
                      "Contact number",
                      "Contact number",
                      contactNumberController,
                      TextInputType.text,
                    ),
                    SizedBox(height: 7.6),
                    createTextField(
                      context,
                      "Email address",
                      "Email address",
                      emailController,
                      TextInputType.emailAddress,
                    ),
                    SizedBox(height: 15),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Skip",
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: createColoredButton(
                          context,
                          "Next (3/3)",
                          MyColor.button,
                          () => navTo(context, CardReviewScreen())),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
