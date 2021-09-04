import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slatable_mobile/cubit/mainCubit/cubit.dart';
import 'package:slatable_mobile/cubit/mainCubit/states.dart';
import 'package:slatable_mobile/modules/auth/view/components/CreateAccComponents.dart';
import 'package:slatable_mobile/shared/ui/components/titledTextField.dart';

class CreateAccInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(107.0), // here the desired height
              child: AppBar(
                  elevation: 0,
                  leading: BackButton(
                    color: Colors.black,
                  )),

              // backgroundColor: Color(0xe1f5fe).withOpacity(1.0),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  CreateAccHead("Your Contact Info",
                      "Enter as much info as you can.\n You can always edit, add or update in \n Settings later."),
                  createTextField(context, "Stage name", "Enter name"),
                  createTextField(context, "Union affiliation", "Enter union"),
                  createTextField(
                      context, "Contact number", "Enter contact number"),
                  createTextField(
                      context, "Email address", "Enter email address"),
                  createTextAndIcon(context),
                  createNextAccButton(context, "Next (1/3)")

                ],
              ),
            ),
          );
        });
  }
}
